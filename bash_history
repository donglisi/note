sudo dd if=/proc/1089247/mem iflag=skip_bytes,count_bytes skip=$((140496427798528)) count=16777216 2> /dev/null > ~/test/mem16
cat regs | xxd -c 32 -g 1
cat regs | xxd -c 32 -p | sed 's/../& /g'
hexdump -e '"%0.7_ax " "%0.7_ad " 32/1 "%02x " "\n"' regs
