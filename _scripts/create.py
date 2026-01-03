#!/usr/bin/env python3

import re
import os
from pathlib import Path

def extract_variables(text):
    # Find all $VARNAME occurrences
    return set(re.findall(r'\$([A-Za-z0-9_]+)', text))

def main():


    drafts_dir = Path(__file__).parent.parent / '_drafts'
    # Find the template file dynamically
    template_files = list(drafts_dir.glob('film-fight*.md'))
    if not template_files:
        print('No template file found matching film-fight*.md in _drafts')
        return
    # Use the first matching template file
    template_path = template_files[0]
    template_name = template_path.name

    # Gather variables from filename and file content
    with open(template_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Find all $VARNAME occurrences in filename and content, in order
    def find_var_occurrences(text):
        return [(m.group(0), m.group(1)) for m in re.finditer(r'\$([A-Za-z0-9_]+)', text)]

    all_occurrences = find_var_occurrences(template_name) + find_var_occurrences(content)

    # Map canonical variable name (upper) to first seen template variable
    canonical_to_first = {}
    for full, var in all_occurrences:
        canon = var.upper()
        if canon not in canonical_to_first:
            canonical_to_first[canon] = var

    # Prompt user for each canonical variable (first appearance)
    values = {}
    for canon, first_var in canonical_to_first.items():
        values[canon] = input(f'Enter value for {first_var}: ')

    # Always store input as provided, but match case at substitution time

    # Helper to match case
    def match_case(template_var, value):
        if template_var.isupper():
            return value.upper()
        elif template_var.islower():
            return value.lower()
        elif template_var[0].isupper() and template_var[1:].islower():
            return value.capitalize()
        else:
            # If mixed case, preserve input
            return value

    # Substitute variables in filename using match_case for every replacement
    def filename_replacer(match):
        var = match.group(1)
        canon = var.upper()
        if canon in values:
            return match_case(var, values[canon])
        return match.group(0)
    new_filename = re.sub(r'\$([A-Za-z0-9_]+)', filename_replacer, template_name)

    # Substitute variables in content
    new_content = content
    for full, var in find_var_occurrences(content):
        canon = var.upper()
        if canon in values:
            new_content = new_content.replace(full, match_case(var, values[canon]))

    # Write new file
    new_path = drafts_dir / new_filename
    if new_path.exists():
        print(f'File {new_path} already exists. Aborting.')
        return
    with open(new_path, 'w', encoding='utf-8') as f:
        f.write(new_content)
    print(f'Created {new_path}')

if __name__ == '__main__':
    main()
