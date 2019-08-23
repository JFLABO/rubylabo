require 'rubygems'
require 'net/ssh'
 
Net::SSH.start('hostname', 'user', :password => 'password') do |ssh|
  puts ssh.exec! 'ls /etc/'
end
