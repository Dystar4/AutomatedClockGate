# AutomatedClockGate
THIS README FILE SHOWS HOW YOU CAN USE THE TOOL

##### GENERATE GATE-LEVEL NETLIST USING YOSYS #######
#OPEN DOCKER
docker run -it -v $(pwd):/data ddlabsauc/asic:l3
cd data
# OPEN YOSYS
yosys
# read design
read_verilog <filename.v>
# generic synthesis
synth -top <topmodulename>
# flatten the gate level netlist
flatten; opt
# mapping to sky130 SCL
dfflibmap -liberty /pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
abc -D 1250 -constr constraints.txt -liberty /pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
clean
# Print some statistics
stat -liberty /pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib
# write synthesized design
write_verilog -noattr -noexpr <filename.gl.v>
# exit yosys shell
exit

#### RUN AUTOMTATIC CLOCK GATING TOOL ####
#IN THE SAME FOLDER OF GATE-LEVEL NETLIST
#RUN TERMINAL AND COPY main.py
python3 main.py
#ENTER GATELIST FILENAME
register.v
#YOU WILL FIND OUTPUT FILE <filename.gl.v>


 
