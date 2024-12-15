import os

folder_path = os.getcwd()

for filename in os.listdir(folder_path):
    new_filename = filename.lower()
    os.rename(os.path.join(folder_path, filename), os.path.join(folder_path, new_filename))

print("Все файлы в текущей папке были переименованы в нижний регистр.")