#!/bin/bash
printf '\n\033[1;32m [NKTOL] | >>welcome<< | create by: Háu Trung Lực\033[0m\n\n'
home='/data/data/com.termux/files/'
printf '\n\033[1;32m Tiến Hành Cài Dữ Liệu\033[0m\n\n'
termux-setup-storage
pkg update
pkg upgrade
pkg install python
printf '\n\033[1;32m Tiến Hành Cài Python Packages\033[0m\n\n'
pip install requests
pip install cloudscraper
pip install colorama
pip install regex
printf '\n\033[1;32m Tải về script NKZ_ad.py\033[0m\n\n'
curl -s https://raw.githubusercontent.com/NKZA1/NKTOL_ADS/refs/heads/main/NKTSZ.py -o $home/usr/bin/nkzad
dos2unix $home/usr/bin/nkzad
chmod +x $home/usr/bin/nkzad
if [ -f $home/usr/bin/nkzad ]; then
    printf '\n\033[1;32m Script NKZ.py đã được tải xuống và cấp quyền thực thi thành công.\033[0m\n\n'
else
    printf '\n\033[1;31m Không thể tải xuống hoặc cấp quyền thực thi cho script NKZ.py.\033[0m\n\n'
    exit 1
fi
printf '\n\033[1;32m Gõ \033[1;33mnkzad \033[1;32m để vào tool\n\n'
printf '\n\033[1;32m [NKTOL] \033[1;33mADMIN VERSION NKTOL!!!\n\n\033[0m'
