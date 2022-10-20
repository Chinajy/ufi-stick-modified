#!/bin/bash
set -xeuo pipefail
mount --bind /proc /mnt/proc
mount --bind /dev /mnt/dev
mount --bind /dev/pts /mnt/dev/pts
mount --bind /sys /mnt/sys
