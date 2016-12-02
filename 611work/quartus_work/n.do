#write transcript output.txt
#vlog reportprogress 300 -work work ./*.v
vlog -reportprogress 300 -work work /acct/sagerje/Downloads/master/611work/quartus_work/*.v
vsim work.lab4_testbench -novopt
# restart -f
run 200
quit -f




