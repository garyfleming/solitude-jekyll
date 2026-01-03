import sys
import re
from pathlib import Path
from datetime import datetime

def update_date_in_file(md_path):
    path = Path(md_path)
    if not path.exists():
        print(f"File not found: {md_path}")
        return
    with open(path, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    # Find frontmatter
    if not lines or not lines[0].strip().startswith('---'):
        print("No frontmatter found.")
        return
    # Find end of frontmatter
    end_idx = None
    for i, line in enumerate(lines[1:], 1):
        if line.strip().startswith('---'):
            end_idx = i
            break
    if end_idx is None:
        print("No end to frontmatter found.")
        return

    # Find and update date line
    date_pattern = re.compile(r'^(date\s*:\s*)(.+)$', re.IGNORECASE)
    updated = False
    for i in range(1, end_idx):
        m = date_pattern.match(lines[i])
        if m:
            # Always use format YYYY-MM-DDTHH:mm
            dt = datetime.now()
            new_date = dt.strftime('%Y-%m-%dT%H:%M')
            lines[i] = m.group(1) + new_date + '\n'
            updated = True
            break
    if not updated:
        print("No date field found in frontmatter.")
        return
    with open(path, 'w', encoding='utf-8') as f:
        f.writelines(lines)
    print(f"Updated date in {md_path} to {new_date}")

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print("Usage: python update_date.py <markdown_file>")
    else:
        update_date_in_file(sys.argv[1])
