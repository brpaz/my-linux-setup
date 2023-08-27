import os

def process_directory(directory):
    subdirectories = [item for item in os.listdir(directory) if os.path.isdir(os.path.join(directory, item))]
    subdirectories.sort()  # Sort the subdirectories alphabetically

    for item in subdirectories:
        print(f"- {{ role: {item}, tags: [{item}] }}")

if __name__ == '__main__':
    target_directory = 'roles'
    process_directory(target_directory)
