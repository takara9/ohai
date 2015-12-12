#
# Cookbook Name:: ohai_sl01
# Recipe:: default
#

print "============================================\n"
print "node['platform']=  ", node['platform'], "\n"
print "node['platform_version']=  ", node['platform_version'], "\n"
print "node['ipaddress']= ", node['ipaddress'], "\n"
p node['ipaddress']
print "node['macaddress']= ", node['macaddress'], "\n"
p node['macaddress']
print "node['fqdn']= ", node['fqdn'], "\n"
print "node['hostname']= ",node['hostname'], "\n"
print "node['domain']= ",node['domain'], "\n"
print "node['recipes']= ",node['recipes'],"\n"
print "node['roles']= ",node['roles'],"\n"
print "node['ohai_time']= ",node['ohai_time'],"\n"
print "============================================\n"


