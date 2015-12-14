# esxi-upgrade-over-ssh
# Upgrading ESXi / vSphere 5.5 to 6 via ssh/ esxcli
#################################################

Before getting started
  - Migrate any running VMs off of the host you're upgrading
  - Enable SSH on Host, open port 22 on firewall
  - SSH to Host
  - list versions available and update the script if there is a newer version listed
    `esxcli software sources profile list -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml`

#Usage
 `./esxi_5.5-to-6.0-upgrade.sh`
 
Your server will upgrade and reboot after completion.
Note: it can take a long time to download the image without any feedback, so be patient.
 
