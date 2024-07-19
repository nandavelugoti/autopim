# Va.py
from globus_compute_sdk import Executor
import sys

def vector_addition(vector1, vector2):
    result = []
    for i in range(len(vector1)):
        result.append(vector1[i] + vector2[i])
    return result

def main():
    try:
        vec_size = int(sys.argv[1])
    except IndexError:
        print("Please provide the size of the vectors as an argument.")
        return
    except ValueError:
        print("Please provide a valid integer for the size of the vectors.")
        return

    vector1 = [x for x in range(vec_size)]
    vector2 = [x for x in range(vec_size)]
    result = vector_addition(vector1, vector2)
    print(f'Vector addition finished on {len(result)} elements')

    # Define the endpoint ID for Globus Compute
    tutorial_endpoint_id = 'f9191435-4c51-4cfa-a17a-91128ae519c7'  # Correct UUID

    # Use Globus Compute to run the vector addition remotely
    try:
        with Executor(endpoint_id=tutorial_endpoint_id) as gce:
            print("Submitting task to Globus Compute...")
            future = gce.submit(vector_addition, vector1, vector2)

            # Wait for the result and print it
            print("Waiting for result...")
            remote_result = future.result(timeout=3000)
            print(f'Remote vector addition result: {remote_result}')
    except Exception as e:
        print(f"An error occurred during remote execution: {e}")

if __name__ == "__main__":
    main()

