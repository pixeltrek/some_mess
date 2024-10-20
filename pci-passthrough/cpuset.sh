#文件放在/etc/libvirt/hooks/qemu
#!/bin/sh

command=$2

if [ "$command" = "started" ]; then
    systemctl set-property --runtime -- system.slice AllowedCPUs=0,1,2,3,8,9,10,11
    systemctl set-property --runtime -- user.slice AllowedCPUs=0,1,2,3,8,9,10,11
    systemctl set-property --runtime -- init.scope AllowedCPUs=0,1,2,3,8,9,10,11
elif [ "$command" = "release" ]; then
    systemctl set-property --runtime -- system.slice AllowedCPUs=0-15
    systemctl set-property --runtime -- user.slice AllowedCPUs=0-15
    systemctl set-property --runtime -- init.scope AllowedCPUs=0-15
fi
