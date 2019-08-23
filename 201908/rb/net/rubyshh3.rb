#!/usr/bin/env ruby
require 'rubygems'
require 'net/ssh'

Net::SSH.start('gw.example.net', 'USERNAME', :password => '****') do |ssh|
    command = "rsync -avz --progress /var/www/ 192.168.10.21:/var/www/\n"
    channel = ssh.open_channel do |ch|
      channel.request_pty do |ch, success|
        raise "Could not obtain pty " if !success
      end
      channel.exec command do |ch, success|
        raise "failed to execute command" unless success
        ch.on_data do |c, data|
          if data =~ /password/ then #入力ダイアログが来たら
            channel.send_data "****\n" #パスワードを送信する
          end
          puts data
        end
      end
    end
    ssh.loop#転送待ち
end
