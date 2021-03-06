#
# Cookbook:: chef-knockd
# Attibutes:: defaults
#
# Copyright:: 2017,  Luca Capanna
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
# Description:: Attributes for chef-knockd cookbook

# attributes for knockd
default['knockd']['logfile'] = '/var/log/knockd.log'
default['knockd']['interface'] = 'eth0'
default['knockd']['sequence'] = '2222,3333,4444'
default['knockd']['start_cmd'] = '/sbin/iptables -I INPUT 1 -m state --state NEW,ESTABLISHED,RELATED -s %IP% -p tcp --dport ssh -j ACCEPT'
default['knockd']['seq_time'] = 15
default['knockd']['cmd_time'] = 20
default['knockd']['tcpflags'] = 'syn'

# ping here
default['knockd']['stop_cmd'] = '/sbin/iptables -D INPUT -m state --state NEW,ESTABLISHED,RELATED -s %IP% -p tcp --dport ssh -j ACCEPT'
