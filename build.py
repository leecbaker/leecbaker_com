from jinja2 import Environment, FileSystemLoader, select_autoescape
from pathlib import Path
import datetime
import shutil

INPUT_DIR=Path("templates/")
STATIC_DIR=Path("static/")
OUTPUT_DIR=Path("site/")


def build():

    OUTPUT_DIR.mkdir(exist_ok=True, parents=True)

    # copy static files
    shutil.copytree(STATIC_DIR, OUTPUT_DIR, dirs_exist_ok=True)

    # build templates
    env = Environment(
        loader=FileSystemLoader(INPUT_DIR),
        autoescape=select_autoescape(['html', 'xml'])
    )

    env.globals.update({"now": datetime.datetime.now()})

    pathlist = INPUT_DIR.glob('**/*.html')
    for filepath in pathlist:
        # Filenames starting with _ indicate they shouldnt be pages, but are support files
        if filepath.name.startswith("_"):
            continue

        relative_path = filepath.relative_to(INPUT_DIR)
        output_filename = OUTPUT_DIR / relative_path

        template = env.get_template(str(relative_path))
        rendered = template.render()
        with open(output_filename, "w") as fp:
            fp.write(rendered)

build()