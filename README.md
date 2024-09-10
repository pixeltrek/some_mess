### Arch linux
## setting up Chinese
vim /etc/locala.gen
remove # for en_US.UTF-8 & zh_CN.UTF-8
```
locale-gen
echo 'LANG=en_US.UTF-8' > /etc/locale.conf 
sudo pacman -S adobe-source-han-serif-cn-fonts wqy-zenhei
```
## Setting up yay
```
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay --version
```
