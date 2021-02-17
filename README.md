# python-directory-compiler
[Github Repository](https://github.com/KrazyKirby99999/python-directory-compiler)

A wrapper for Nuitka that walks through a directory tree and compiles all .py Python source files into (.so/.pyd) files.

usage: py-dir-compiler [-h] [-e EXCLUDE [EXCLUDE ...]] [-ds]

optional arguments:

  -h, --help            show this help message and exit

  -e EXCLUDE [EXCLUDE ...], --exclude EXCLUDE [EXCLUDE ...]
                        (Usage: -e <filename>) (Usage: -e <foldername>)
                        Exclude folder(s)/file(s) from compilation. Use
                        absolute path if multiple folders share the same name.

  -ds, --delete_source  (Usage: -ds) Removes source .py files after
                        compilation. Preserves folder structure.
