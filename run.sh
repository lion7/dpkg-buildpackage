#!/bin/bash
cd /package/ || exit 1
dpkg-buildpackage $@
