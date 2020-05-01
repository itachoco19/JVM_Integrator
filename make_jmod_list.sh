#!/bin/bash

if [[ !(-z $JAVA_HOME) ]] ; then
    echo "Create jmod list"
    echo `ls $JAVA_HOME/jmods` | sed s/'.jmod '/,/g | sed s/.jmod$//g > jmods.list
else
    echo "JAVA_HOME is not exists"
    exit 1
fi

exit 0
