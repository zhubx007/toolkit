#!/bin/bash

isort --multi-line 3 --trailing-comma --force-grid-wrap 0 --use-parentheses --line-length 79 --reverse-relative --combine-as $1
black --line-length 79 --target-version py38 $1
add-trailing-comma --py36-plus --exit-zero-even-if-changed $1
