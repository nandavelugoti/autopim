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

