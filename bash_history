cat regs | xxd -c 32 -g 1
cat regs | xxd -c 32 -p | sed 's/../& /g'

sudo dd if=/proc/$(pgrep lkvm)/mem iflag=skip_bytes,count_bytes skip=$((140166996910080)) count=14680064 2> /dev/null | hexdump -e '"%0.7_ax " "%0.9_ad " 32/1 "%02x "' -e '" " 32/1 "%_p" "\n"'

objcopy -O binary -j .text a.out a.bin
objdump -b binary -D -Matt,x86-64 -m i386 a.bin

dd if=/dev/zero iflag=skip_bytes,count_bytes oflag=seek_bytes of=~/test/mem.bin seek=1048576 count=13018208 conv=notrunc
