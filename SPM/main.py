import sys
import string
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator

fileName = input("PLEASE ENTER GATELIST FILE NAME \n")
rtl = fileName + ".v"
ast, _ = parse([rtl])

# get the root node of the tree (Description)
desc = ast.description
 
# get the ModuleDef node
definition = desc.definitions[0]

#A node of type instance include clk gating cell
clkgate_args = [
    vast.PortArg("GCLK",vast.Identifier("GCLK")),
    vast.PortArg("GATE",vast.Identifier("en")),
    vast.PortArg("CLK",vast.Identifier("clk"))
]
clkgate_cell = vast.Instance (
    "sky130_fd_sc_hd__dlclkp_1",
    "__clkgate_cell__",
    tuple (clkgate_args),
    tuple()
)

#clkgate wire
GCLK_wire = vast.Wire("GCLK")

#check for clkgate cell
clkgateIsThere = 0

#new instance
new_instances = []

#array to hold muxes
i=0
j=0
muxes = []

#input signal to mux
inMUX = ""

#get instances modules
for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if "mux" in instance.module:
            muxes.append(itemDeclaration)
            for hook in instance.portlist:
                if hook.portname == "A1":
                    inMUX = hook.argname.var
            i=i+1
        #append clkgate
        elif "dfxtp" in instance.module:
            if clkgateIsThere == 0 and i!=0:
                clkgateIsThere = 1
                new_instances.append(GCLK_wire)
                new_instances.append(vast.InstanceList("sky130_fd_sc_hd__dlclkp_1",tuple(),tuple([clkgate_cell])))
                for hook in instance.portlist:
                    if hook.portname == "CLK":
                        hook.argname = vast.Identifier("GCLK")
                    if hook.portname == "D":
                        hook.argname = vast.Identifier(str(inMUX) + '[' + str(j) + ']')
                new_instances.append(itemDeclaration)
                j=1
            elif j!=0:
                for hook in instance.portlist:
                    if hook.portname == "CLK":
                        hook.argname = vast.Identifier("GCLK")
                    if hook.portname == "D" and i>1:
                        hook.argname = vast.Identifier(str(inMUX) + '[' + str(j) + ']')
                    elif hook.portname == "D" and i==1:
                        hook.argname = vast.Identifier(str(inMUX))
                new_instances.append(itemDeclaration)
                j=j+1
            else:
                j=0
                new_instances.append(itemDeclaration)
        else:
            if i!=0:
                new_instances.extend(muxes)
                muxes.clear ()
                i=0
            new_instances.append(itemDeclaration)
    
#modify output and combining instance
inputsANDoutputs = list(definition.items)

inputsANDoutputs = inputsANDoutputs [0:418]
items = inputsANDoutputs + new_instances
definition.items = tuple (items)

#write the ast to a.v file
codegen = ASTCodeGenerator ()
rslt = codegen.visit (ast)

f= open (fileName + ".clkg.v", "w+")
f.write(rslt)
f.close ()
