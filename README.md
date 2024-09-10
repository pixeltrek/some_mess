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
yay -Si package_name  这个命令会显示有关包的详细信息，包括描述、依赖项、维护者等。

Remove packages with:
yay -R package_name

To delete a package with its dependencies:
yay -Rns package_name

Upgrading (only) the AUR packages:
yay -Sua

升级yay
yay -Sua

卸载yay
sudo pacman -Rs yay
清理缓存
sudo yay -Scc


```
# pacman 使用方法
## 安装软件
```
pacman -S 软件名: 安装软件。也可以同时安装多个包，只需以空格分隔包名即可。
pacman -S --needed 软件名1 软件名2: 安装软件，但不重新安装已经是最新的软件。
pacman -Sy 软件名：安装软件前，先从远程仓库下载软件包数据库(数据库即所有软件列表)。
pacman -Sv 软件名：在显示一些操作信息后执行安装。
pacman -Sw 软件名: 只下载软件包，不安装。
pacman -U 软件名.pkg.tar.gz：安装本地软件包。
pacman -U http://www.example.com/repo/example.pkg.tar.xz : 
```

## 更新系统
```

pacman -Sy: 从服务器下载新的软件包数据库（实际上就是下载远程仓库最新软件列表到本地）。
pacman -Su: 升级所有已安装的软件包。
```
## 卸载软件

```
pacman -R 软件名: 该命令将只删除包，保留其全部已经安装的依赖关系
pacman -Rv 软件名: 删除软件，并显示详细的信息
pacman -Rs 软件名: 删除软件，同时删除本机上只有该软件依赖的软件。
pacman -Rsc 软件名: 删除软件，并删除所有依赖这个软件的程序，慎用
pacman -Ru 软件名: 删除软件,同时删除不再被任何软件所需要的依赖
```
## 搜索软件
```
pacman -Ss 关键字: 在仓库中搜索含关键字的软件包（本地已安装的会标记）
pacman -Sl <repo>:
显示软件仓库中所有软件的列表
可以省略，通常这样用:`pacman -Sl | 关键字`
pacman -Qs 关键字: 搜索已安装的软件包
pacman -Qu: 列出所有可升级的软件包
pacman -Qt: 列出不被任何软件要求的软件包
```
## 清理缓存
```
pacman -Sc：清理未安装的包文件，包文件位于 /var/cache/pacman/pkg/ 目录。
pacman -Scc：清理所有的缓存文件。
```

## 修改用户文件夹名称
```
vim .config/user-dirs.dirs
```
然后：
右键需要修改名字的文件夹 点编辑
![image](https://github.com/user-attachments/assets/d6486d32-4986-4b0d-8e38-77ee70763a08)



