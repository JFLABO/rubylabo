  opt = {
    :keys => '/home/user/.ssh/this_is_private_key.key',
    :passphrase => 'passcode',
    :port => 22
  }
  Net::SSH.start('172.17.0.88', '<USERNAME>', opt) do |ssh|
    cmd1 = 'echo gto > sasak.txt'
    ssh.exec!(cmd1)
    # File Transfer over SSH
    src_path = '/home/<USERNAME>/tomo.txt'
    dst_path = './tomo.txt'
    ssh.scp.download! src_path, dst_path
  end

#gem install net-ssh
#gem install net-scp
