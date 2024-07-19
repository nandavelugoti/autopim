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

Environment:
1. run `nix-shell`

MemGaze Pipeline:
1. <MEMGAZE_PATH>/install/bin/memgaze-inst va
2. <MEMGAZE_PATH>/install/bin/memgaze-run -p 100000 memgaze-va/va-memgaze 10000000
3. <MEMGAZE_PATH>/install/bin/memgaze-xtrace -i va-memgaze-trace-b8192-p100000/

Graph Cluster Analysis:
1. Get the trace file 
2. Generate basic-blocks.json file (scripts/ directory)
3. Place tracefile and basic-blocks.json in a directory
4. Run cluster analysis using `cluster-anlys` tool (https://github.com/nandavelugoti/cluster-anlys)

References:
- cython usage: https://stackoverflow.com/questions/5105482/compile-main-python-program-using-cython

