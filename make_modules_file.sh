#!/bin/bash

if [[ !(-z $JAVA_HOME) ]] ; then
    echo "Create modules file"
    if [[ -x $JAVA_HOME/bin/jlink ]] ; then
        bash ./make_jmod_list.sh
        jlink --module-path $JAVA_HOME/jmods --add-modules `cat jmods.list` --output ./jre
        cp ./jre/lib/modules ./
        rm -rf ./jre
        rm ./jmods.list
    else
        echo "jlink is not executable"
    fi
else
    echo "JAVA_HOME is not exists."
    exit 1
fi

exit 0
