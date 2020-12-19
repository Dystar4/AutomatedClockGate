import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator

rtl = "spm.gl.v"
ast, _ = parse([rtl])

# print ast
ast.show()

# print ast
ast.show()

# get the root node of the tree (Description)
desc = ast.description
 
# get the ModuleDef node
definition = desc.definitions[0]

# Add clk_gate cell to the design 
# empty list to keep in the new instances I will add to the design
instances = []
statements = []

# first you will need to create a node of type Instance
clk_gate_args = [
    vast.PortArg("GCLK", vast.Identifier("__clk_gate_output_GCLK_")),
    vast.PortArg("GATE", vast.Identifier("__clk_gate_input_GATE_")),
    vast.PortArg("CLK", vast.Identifier("__clk_gate_input_CLK_"))
]  

clk_gate_cell = vast.Instance(
    "sky130_fd_sc_hd__dlcklkp",
    "__clk_gate_cell__",
    tuple(clk_gate_args),
    tuple()
)

for itemDeclaration in definition.items:
    item_type = type(itemDeclaration).__name__
    if item_type == "InstanceList":
        instance = itemDeclaration.instances[0]
        if (instance.module == "sky130_fd_sc_hd__dfrtp_1"):
            instances.append(vast.InstanceList("sky130_fd_sc_hd__dlclkp", tuple(), tuple([clk_gate_cell])))
            #replace with clk_gate_gl
        for hook in instance.portlist:
            #replace with hookname
            if  (hook.portname == "A1"):
                print (1)
            
# Add the instances list to the AST items
items = list(definition.items)
items = items + instances + statements

definition.items = tuple(items)

# write the ast to a .v file
codegen = ASTCodeGenerator()
rslt = codegen.visit(ast)

f = open("spm.gl_new.v", "w+")
f.write(rslt)
f.close()
