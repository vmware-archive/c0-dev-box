VM_MEMORY = ENV.fetch('VM_MEMORY', 2*1024).to_i
VM_CORES = ENV.fetch('VM_CORES', 4).to_i

Vagrant.configure('2') do |config|
  config.vm.hostname = 'c0-dev'

  config.vm.provider :virtualbox do |vbox, override|
    vbox.customize ['modifyvm', :id, '--memory', VM_MEMORY]
    vbox.customize ['modifyvm', :id, '--cpus', VM_CORES]
  end

  config.vm.synced_folder ".", "/vagrant", mount_options: %w( dmode=777 fmode=777 )
  config.ssh.forward_agent = true
end
