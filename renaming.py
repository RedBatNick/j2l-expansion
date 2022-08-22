import os, re
from pathlib import Path

PATH = "source.gmx\\"

with open(f"{PATH}j2l source.project.gmx", "r") as file:
    source = file.read()

def rename_iter(text, search):
    for m in re.finditer(f"<{search}>{search}s\\\\(.*)</{search}>", text):
        yield m[1]


def replace_file_mentions(old_name, new_name):
    for path in Path(f"{PATH}").rglob("*"):
        try:
            with open(path, "r") as file:
                text = file.read()

            text = re.sub(f"\\b{old_name}(_[0-9]+)?\\b", f"{new_name}\\1", text)

            with open(path, "w") as file:
                file.write(text)
        except:
            continue


# Leftover spr naming conventions in sprite images
for path in Path(f"{PATH}\\sprites\\images").rglob("*.png"):
    if not path.name.startswith("spr"):
        continue

    os.remove(path)

# Sprite renaming
for m in rename_iter(source, "sprite"):
    old_name = m

    if old_name.startswith("spr"):
        continue

    new_name = "spr" + old_name[1:]
    print(f"Replacing \"{old_name}\" -> \"{new_name}\"")
    sprite_path = f"{PATH}sprites\\//__NAME__//.sprite.gmx"
    old_path = sprite_path.replace("//__NAME__//", old_name)
    new_path = sprite_path.replace("//__NAME__//", new_name)
    os.rename(old_path, new_path)
    
    for i in range(10000):
        image = f"{PATH}sprites\\images\\//__NAME__//_{i}.png"
        old_image = image.replace("//__NAME__//", old_name)
        new_image = image.replace("//__NAME__//", new_name)
        
        if not os.path.exists(old_image):
            break

        os.rename(old_image, new_image)

    replace_file_mentions(old_name, new_name)


# Object renaming
for m in rename_iter(source, "object"):
    old_name = m

    if old_name.startswith("obj"):
        continue

    new_name = "obj" + old_name[1:]
    print(f"Replacing \"{old_name}\" -> \"{new_name}\"")
    object_path = f"{PATH}objects\\//__NAME__//.object.gmx"
    old_path = object_path.replace("//__NAME__//", old_name)
    new_path = object_path.replace("//__NAME__//", new_name)
    os.rename(old_path, new_path)

    replace_file_mentions(old_name, new_name)