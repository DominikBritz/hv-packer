boot_command=["<wait3>c<wait3>","linux /casper/vmlinuz quiet autoinstall net.ifnames=0 biosdevname=0 ip=dhcp ipv6.disable=1 ds=nocloud-net\\;s=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ <enter>","initrd /casper/initrd <enter>","boot <enter>"]
disk_additional_size=["150000"]
disk_size="70000"
http_directory="./extra/files/ubuntu/24.04/hyperv"
iso_checksum_type="sha256"
iso_checksum="8762f7e74e4d64d72fceb5f70682e6b069932deedb4949c6975d0f0fe0a91be3"
iso_url="https://mirroronet.pl/pub/mirrors/ubuntu-releases/24.04/ubuntu-24.04-live-server-amd64.iso"
output_directory="output-ubuntu2204"
provision_script_options="-z false -h true -p false"
ssh_password="password"
ssh_username="ubuntu"
switch_name="vSwitch"
vlan_id=""
vm_name="packer-ubuntu2404-g2"
uefi_file="extra/files/ubuntu/24.04/uefi.sh"
provision_file="extra/files/ubuntu/shared/provision.sh"
motd_file="extra/files/ubuntu/shared/motd.sh"
zeroing_file="extra/files/ubuntu/shared/zeroing.sh"
neofetch_file="extra/files/ubuntu/shared/prepare_neofetch.sh"
memory = "2048"
cpus = "4"