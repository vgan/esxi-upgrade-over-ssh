# Upgrading ESXi / vSphere 5.5 to 6 via ssh/ esxcli
#################################################
# - Migrate running VMs off of host
# - Enable SSH on host, open firewall
#
# list versions available
#esxcli software sources profile list -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml

# open http out
esxcli network firewall ruleset set -e true -r httpClient
esxcli network firewall refresh

# enter maintenance mode
esxcli system maintenanceMode set --enable true

# pull upgrade files and install
esxcli software profile update -d https://hostupdate.vmware.com/software/VUM/PRODUCTION/main/vmw-depot-index.xml -p ESXi-6.0.0-2494585-standard

reboot
