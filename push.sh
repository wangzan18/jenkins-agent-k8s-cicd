#!/bin/bash
CONTENT=`date '+%Y-%m-%d %H:%M:%S'`;
git add .
git commit -m "$CONTENT"
git push
