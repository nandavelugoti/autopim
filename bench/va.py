import sys

def vector_addition(vector1, vector2):
    result = []
    for i in range(len(vector1)):
        result.append(vector1[i] + vector2[i])
    return result

vec_size = int(sys.argv[1])
vector1 = [x for x in range(vec_size)]
vector2 = [x for x in range(vec_size)]
result = vector_addition(vector1, vector2)
print(f'Vector addition finished on {len(result)} elements')

