#!/bin/bash
# toggles minimize/activate or launches window with specified class
#
# window class can be found with:
#   wmctrl -x -l
#   xprop

# eg. toggler.sh terminator /usr/bin/terminator


WINDOW_ID_HEX=`wmctrl -x -l | grep $1 | awk '{print $1}' | head -n 1`
WINDOW_ID_DEC=$((${WINDOW_ID_HEX}))

if [ -z "${WINDOW_ID_HEX}" ]; then
    $2
else
    echo "Found window ID:${WINDOW_ID_DEC}(0x${WINDOW_ID_HEX})"
    ACIVE_WINDOW_DEC=`xdotool getactivewindow`
    if [ "${ACIVE_WINDOW_DEC}" == "${WINDOW_ID_DEC}" ]; then
        xdotool windowminimize ${WINDOW_ID_DEC}
    else
        xdotool windowactivate ${WINDOW_ID_DEC}
    fi
fi

