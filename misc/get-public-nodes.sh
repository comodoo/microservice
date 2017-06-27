# Lookup the internal IP of the public agent node hosting marathon-lb
dcos marathon app show marathon-lb | jq -r .tasks[].host
#  Get the list of public node IPs
dcos node --json | jq -r '.[] | select(.attributes.public_ip == "true") | .hostname'

# Lookup the public IP of the public agent node

#ssh <internal ip of one public node>
#curl -sf http://ipecho.net/plain
