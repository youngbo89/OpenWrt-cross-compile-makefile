# Cross Compile [Hello World] for OpenWrt
keywords: OpenWrt, Cross Compile

0. download SDK from [OpenWrt](https://downloads.openwrt.org/)
0. extract it to a directory. I will call this directory $(OPENWRT_SDK)
0. make symbolic link for toolchain directory.
  I will call this directory $(TOOLCHAIN)
	`sim@host:~$ ln -s $(OPENWRT_SDK)/staging_dir/$(SO_LOOOOOOONG_NAME) $(OPENWRT_SDK)/staging_dir/toolchain`

0. edit makefile
  depend on your target system, you should set these variables:
  0. STAGING_DIR
  0. PATH
  0. CC
    you will find a binary name in $(TOOLCHAIN)/bin. If your target board is Raspberry Pi(or Pi2), It will be *"arm-openwrt-linux-gcc"*

  You will get more detail information at <http://wiki.openwrt.org/doc/devel/crosscompile>

0. make **hello world**
	`sim@host: $ make`
