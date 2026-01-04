import os
from pathlib import Path
import shutil

def move_posts_to_year_subdirs(posts_dir):
    posts = Path(posts_dir)
    for file in posts.iterdir():
        if file.is_file() and file.suffix == '.md' and len(file.name) >= 4 and file.name[:4].isdigit():
            year = file.name[:4]
            year_dir = posts / year
            year_dir.mkdir(exist_ok=True)
            new_path = year_dir / file.name
            if new_path.exists():
                print(f"File already exists: {new_path}")
                continue
            shutil.move(str(file), str(new_path))
            print(f"Moved {file} to {new_path}")

if __name__ == '__main__':
    move_posts_to_year_subdirs('_posts')
