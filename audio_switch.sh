#!/bin/bash

case `/usr/local/bin/SwitchAudioSource -c` in
    # switchaudio-osx lacks enumeration in case of duplicate source names; suppress output of
    # first two source changes so that notification shows correctly
    'Line-out (Green Rear)')
        /usr/local/bin/SwitchAudioSource -s "Digital-out (HDMI)" > /dev/null
        /usr/local/bin/SwitchAudioSource -n > /dev/null
        /usr/local/bin/SwitchAudioSource -n 
        ;;
    'Digital-out (HDMI)')
        /usr/local/bin/SwitchAudioSource -s "Line-out (Green Rear)"
        ;;
esac
