#!/bin/bash

sys_arch=${sys_arch:-$(uname -m)}

case "$sys_arch" in
	  i586) export ARCH=i586 ;;
          i686) export ARCH=i686 ;;
	x86_64) export ARCH=x86_64 ;;
	     *) echo "This SlackBuild will not build on $sys_arch platform" && exit 1 ;;
esac

echo $ARCH
echo $sys_arch
