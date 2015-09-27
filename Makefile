# Written by Sim Young-Bo
# e-mail: ybsim@khu.ac.kr

################################################################################
# Environment Variables
# Before using this makefile, you should set these two variables depend on your own computer.
################################################################################
export STAGING_DIR	= /home/sim/Downloads/OpenWrt-SDK/staging_dir
export PATH			:= $(PATH):$(STAGING_DIR)/toolchain/bin



################################################################################
# Compile Option
################################################################################
CC					= arm-openwrt-linux-gcc
USR					= $(STAGING_DIR)/toolchain/usr
INCLUDEPATH			= $(USR)/include
LIBS				= $(USR)/lib
CFLAGS				= -I$(INCLUDEPATH)
LDFLAGS				= -L$(LIBS)



################################################################################
# Sources
################################################################################
SRCS				= hello.c
OBJS				= $(SRCS:.c=.o)
EXECUTABLE			= hello

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJS)
	@echo [LD] $@
	@$(CC) -o $@ $^ $(LDFLAGS)
		
.c.o:
	@echo [Compile] $<
	@$(CC) $< -c $(CFLAGS)
	
clean:
	@echo [clean]
	@rm $(OBJS) -f
	@rm $(EXECUTABLE) -f
	@rm dependency -f
	
# http://forum.falinux.com/zbxe/?document_srl=494921&mid=lecture_tip&sort_index=regdate&order_type=desc
dep :
	@$(CC) -M -I$(INCLUDEPATH) $(SRCS) > dependency

ifeq (dependency,$(wildcard dependency))
include dependency
endif
