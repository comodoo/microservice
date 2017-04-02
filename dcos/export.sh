PYTHONUNBUFFERED=1 \
ANSIBLE_FORCE_COLOR=true \
ANSIBLE_HOST_KEY_CHECKING=false
ANSIBLE_SSH_ARGS='-o UserKnownHostsFile=/dev/null -o IdentitiesOnly=yes \
 -i .vagrant/machines/p2/libvirt/private_key
 -o IdentityFile=.vagrant/machines/boot/libvirt/private_key \
 -o IdentityFile=.vagrant/machines/ext/libvirt/private_key \
 -o IdentityFile=.vagrant/machines/m1/libvirt/private_key \
 -o IdentityFile=.vagrant/machines/a1/libvirt/private_key \
 -o IdentityFile=.vagrant/machines/a2/libvirt/private_key \
 -o IdentityFile=.vagrant/machines/p1/libvirt/private_key \
 -o IdentityFile=.vagrant/machines/p2/libvirt/private_key \
 -o ControlMaster=auto -o ControlPersist=60s' \
ansible-playbook --connection=ssh --timeout=30 --extra-vars="ansible_ssh_user='vagrant'" --limit="all" --inventory-file=provisioning/inventory -v provisioning/site.yml
