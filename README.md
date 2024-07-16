Automatic PIM offloads in a funcX environment.

Workload		Sequential	Strided		Random	
----------------------------------------------------------------
Vector Addition		Yes
Reduction		Yes		Yes
BFS			Yes				Yes


Basic pipeline:
1. program.py -> cython -> program.c -> gcc -> program.out
2. program.out -> memgaze -> trace 
3. trace -> anlyzer -> memory-intensity?
4. based on previous step we make offload decision

MemGaze Pipeline:
1. <MEMGAZE_PATH>/install/bin/memgaze-inst va
2. <MEMGAZE_PATH>/install/bin/memgaze-run -p 100000 memgaze-va/va-memgaze 10000000bb
3. <MEMGAZE_PATH>/install/bin/memgaze-xtrace -i va-memgaze-trace-b8192-p100000/
