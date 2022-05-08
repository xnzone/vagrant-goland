#!/usr/bin/env bash
sudo bash -c "echo '[1] [00049] [~~  ] [runlevel] [~           ] [4.4.0-17115-Micoroso] [0.0.0.0        ] [Wed Feb 28 13:27:14 2018 STD]' | utmpdump -r > /var/run/utmp"