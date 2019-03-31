#!/bin/sh

SCRIPTPATH=$(cd "$(dirname "$0")"; pwd)
"$SCRIPTPATH/leanote" -importPath github.com/leanote/leanote -srcPath "$SCRIPTPATH/src" -runMode prod
