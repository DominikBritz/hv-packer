iso_url = "https://download.rockylinux.org/pub/rocky/8/isos/x86_64/Rocky-8.7-x86_64-dvd1.iso"
iso_checksum_type = "sha256"
iso_checksum = "4827dce1c58560d3ca470a5053e8d86ba059cbb77cfca3b5f6a5863d2aac5b84"
vm_name = "packer-rockylinux87-g2"
disk_size = "70000"
disk_additional_size = ["150000"]
switch_name = "vSwitch"
output_directory = "output-rockylinux87"
output_vagrant = "./vbox/packer-rockylinux87-g2.box"
vlan_id = ""
memory = "4096"
cpus = "4"
vagrantfile_template = "./vagrant/hv_rockylinux87_g2.template"
ssh_password = "password"
provision_script_options = "-z false"
boot_command = "c  setparams 'kickstart' <enter> linuxefi /images/pxeboot/vmlinuz inst.stage2=hd:LABEL=Rocky-8-7-x86_64-dvd inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/gen2-rockylinux8/ks.cfg<enter> initrdefi /images/pxeboot/initrd.img<enter> boot<enter>"
ansible_override = "variables/rockylinux8.yml"