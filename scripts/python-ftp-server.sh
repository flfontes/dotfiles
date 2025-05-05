#! /usr/bin/bash

# This creates a FTP server sharing the contents of the current folder.
# The server is served at the local ip, port 2121, under annonymous login.

uv run --with pyftpdlib python -m pyftpdlib
