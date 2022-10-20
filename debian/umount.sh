#!/bin/bash
set -xeuo pipefail
umount /mnt/proc
umount /mnt/dev/pts
umount /mnt/dev
umount /mnt/sys
umount /mnt
