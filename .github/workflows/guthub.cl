name: Python CI Pipeline

on:
  push:
  workflow_dispatch:

jobs:
  build-and-test:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Setup Python
        uses: actions/setup-python@v5
        with:
          python-version: '3.12'

      - name: Build
        run: python -m py_compile hello.py

      - name: Test
        run: python hello.py
