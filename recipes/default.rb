# -*- coding: iso-8859-1 -*-
#
# Cookbook Name:: ohai
# Recipe:: default
#
# mkdir -p /etc/chef/ohai/hints && touch ${_}/softlayer.json
#p node

if false then

print "============================================\n"
print "node['platform']=  ", node['platform'], "\n"
print "node['platform_version']=  ", node['platform_version'], "\n"
print "node['platform_family']=  ", node['platform_family'], "\n"
print "============================================\n"

print "node['ipaddress']= ", node['ipaddress'], "\n"
print "node['macaddress']= ", node['macaddress'], "\n"
print "node['fqdn']= ", node['fqdn'], "\n"
print "node['hostname']= ",node['hostname'], "\n"
print "node['domain']= ",node['domain'], "\n"
print "node['recipes']= ",node['recipes'],"\n"
print "node['roles']= ",node['roles'],"\n"
print "node['ohai_time']= ",node['ohai_time'],"\n"
print "\n"
print "============================================\n"
print "node['cloud']['provider'] = ", node['cloud']['provider'], "\n"
print "node['cloud']['public_hostname'] = ", node['cloud']['public_hostname'], "\n"
print "node['cloud']['public_ips'] = ", node['cloud']['public_ips'], "\n"
print "node['cloud']['private_ips'] = ", node['cloud']['private_ips'], "\n"
print "node['cloud']['public_ipv4'] = ", node['cloud']['public_ipv4'], "\n"
print "node['cloud']['local_ipv4'] = ", node['cloud']['local_ipv4'], "\n"
print "\n"
print "============================================\n"
print "node['softlayer']['public_fqdn']= ", node['softlayer']['public_fqdn'], "\n"
print "node['softlayer']['public_ipv4']= ", node['softlayer']['public_ipv4'], "\n"
print "node['softlayer']['local_ipv4']= ", node['softlayer']['local_ipv4'], "\n"
print "node['softlayer']['region']= ", node['softlayer']['region'], "\n"
print "node['softlayer']['instance_id']= ", node['softlayer']['instance_id'], "\n"
print "\n"
print "============================================\n"
print "node['virtualization']['system'] = ", node['virtualization']['system'], "\n"
print "node['virtualization']['role'] = ", node['virtualization']['role'], "\n"
print "\n"

    #print "Hash ", value.kind_of?(Hash),"\n"
    #print "Array ", value.kind_of?(Array),"\n"
    #print "Object ", value.kind_of?(Object),"\n"
    #print "Enumerable ", value.kind_of?(Enumerable),"\n"
    #print "String ", value.kind_of?(String),"\n"

print "============================================\n"

end

###################
def space(n)
  i = 1
  sp = ""
  while i < n
    sp = sp + "    "
    i = i + 1
  end
  return sp
end

def line(val,lv)
  lv = lv + 1
  sp = space(lv)
  val.each do |key, value|
    if value.kind_of?(Hash) then
      print sp , "#{key}\n"
      line(value,lv)
    end
    if value.kind_of?(String) || value.kind_of?(Array) then
      print sp, "#{key} = #{value}\n"
    end
  end
end
###################

print "============================================\n"
line(node,0)

print "============================================\n"
line(node['cloud'],1)

print "============================================\n"
line(node['softlayer'],1)
