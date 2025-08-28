#!/bin/sh
cp buildroot.config ../buildroot/.config

cp -a package/micro ../buildroot/package/
cp -a board/myoverlay ../buildroot/board/
