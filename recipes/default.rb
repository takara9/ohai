#
# Cookbook Name:: ohai
# Recipe:: default
#
# mkdir -p /etc/chef/ohai/hints && touch ${_}/softlayer.json
# p node

print "============================================\n"
print "node['platform']=  ", node['platform'], "\n"
print "node['platform_version']=  ", node['platform_version'], "\n"
print "node['ipaddress']= ", node['ipaddress'], "\n"
print "node['macaddress']= ", node['macaddress'], "\n"
print "node['fqdn']= ", node['fqdn'], "\n"
print "node['hostname']= ",node['hostname'], "\n"
print "node['domain']= ",node['domain'], "\n"
print "node['recipes']= ",node['recipes'],"\n"
print "node['roles']= ",node['roles'],"\n"
print "node['ohai_time']= ",node['ohai_time'],"\n"
print
print "============================================\n"
print "node['cloud']['provider'] = ", node['cloud']['provider'], "\n"
print "node['cloud']['public_hostname'] = ", node['cloud']['public_hostname'], "\n"
print "node['cloud']['public_ips'] = ", node['cloud']['public_ips'], "\n"
print "node['cloud']['private_ips'] = ", node['cloud']['private_ips'], "\n"
print "node['cloud']['public_ipv4'] = ", node['cloud']['public_ipv4'], "\n"
print "node['cloud']['local_ipv4'] = ", node['cloud']['local_ipv4'], "\n"
print 
print "============================================\n"
print "node['softlayer']['public_fqdn']= ", node['softlayer']['public_fqdn'], "\n"
print "node['softlayer']['public_ipv4']= ", node['softlayer']['public_ipv4'], "\n"
print "node['softlayer']['local_ipv4']= ", node['softlayer']['local_ipv4'], "\n"
print "node['softlayer']['region']= ", node['softlayer']['region'], "\n"
print "node['softlayer']['instance_id']= ", node['softlayer']['instance_id'], "\n"




