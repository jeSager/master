GPP = g++ -O3 -Wall -std=c++11

UTILS = ../../Utilities

A = main.o
G = graphcode.o
N = node.o
S = scanner.o
SL = scanline.o
U = utils.o

Aprog: $(A) $(G) $(N) $(S) $(SL) $(U)
	$(GPP) -o Aprog $(A) $(G) $(N) $(S) $(SL) $(U)

main.o: main.h main.cc
	$(GPP) -c main.cc

graphcode.o: graphcode.h graphcode.cc
	$(GPP) -c graphcode.cc

node.o: node.h node.cc
	$(GPP) -c node.cc

scanner.o: $(UTILS)/scanner.h $(UTILS)/scanner.cc
	$(GPP) -c $(UTILS)/scanner.cc

scanline.o: $(UTILS)/scanline.h $(UTILS)/scanline.cc
	$(GPP) -c $(UTILS)/scanline.cc

utils.o: $(UTILS)/utils.h $(UTILS)/utils.cc
	$(GPP) -c $(UTILS)/utils.cc

