# some_mess

## setting up Chinese
vim /etc/locala.gen
remove # for en_US.UTF-8 & zh_CN.UTF-8
then
locale-gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf \n
sudo pacman -S adobe-source-han-serif-cn-fonts wqy-zenhei
