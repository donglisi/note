cat regs | xxd -c 32 -g 1
cat regs | xxd -c 32 -p | sed 's/../& /g'

sudo dd if=/proc/$(pgrep lkvm)/mem iflag=skip_bytes,count_bytes skip=$((140166996910080)) count=14680064 2> /dev/null | hexdump -e '"%0.7_ax " "%0.9_ad " 32/1 "%02x "' -e '" " 32/1 "%_p" "\n"'
