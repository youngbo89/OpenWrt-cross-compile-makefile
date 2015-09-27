# Cross Compile [Hello World] for OpenWrt
keywords: OpenWrt, Cross Compile, Makefile

0. download **SDK** from [OpenWrt Downloads](https://downloads.openwrt.org/). NOT **ImageBuilder**
0. extract it to a directory. I will call this directory $(OPENWRT_SDK)
0. make symbolic link for toolchain directory. I will call this directory $(TOOLCHAIN)  
	`sim@host:~$ ln -s $(OPENWRT_SDK)/staging_dir/$(SO_LOOOOOOONG_NAME) $(OPENWRT_SDK)/staging_dir/toolchain`

0. edit makefile
  depend on your system, you should edit these variables:
  - STAGING_DIR
  - PATH
  - CC  
    you will find a binary name in $(TOOLCHAIN)/bin.  
  If your target board is Raspberry Pi or Pi2, It will be *"arm-openwrt-linux-gcc"*

  You will get more detail information at <http://wiki.openwrt.org/doc/devel/crosscompile>

0. make **hello world**  
	`sim@host: $ make`
