#!/usr/bin/env python3

import sys
from pathlib import Path
from datetime import datetime
import shutil

def promote_draft(draft_path):
    draft = Path(draft_path)
    if not draft.exists():
        print(f"Draft file not found: {draft_path}")
        return
    if not draft.parent.name == '_drafts':
        print("File must be in the _drafts directory.")
        return
    posts_dir = draft.parent.parent / '_posts'
    posts_dir.mkdir(exist_ok=True)
    today = datetime.now().strftime('%Y-%m-%d')
    new_name = f"{today}-{draft.name}"
    new_path = posts_dir / new_name
    if new_path.exists():
        print(f"File already exists in _posts: {new_path}")
        return
    shutil.move(str(draft), str(new_path))
    print(f"Moved and renamed to {new_path}")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python promote.py <draft_file_path>")
    else:
        promote_draft(sys.argv[1])
