Vagrant.require_version ">= 1.5"

Vagrant.configure("2") do |config|
    (1..3).each do |i|
        config.vm.define "application_#{i}" do |application|
            application.vm.provider :virtualbox do |v|
                v.name = "application_#{i}"
                v.customize [
                    "modifyvm", :id,
                    "--name", "application_#{i}",
                    "--memory", 512,
                    "--natdnshostresolver1", "on",
                    "--cpus", 1,
                ]
            end

            application.vm.box = "ubuntu/trusty64"
            application.vm.network :private_network, ip: "192.168.30.2#{i}"
            application.ssh.forward_agent = true
            application.vm.synced_folder "./", "/vagrant", :nfs => true, :mount_options => ['vers=3','noatime','actimeo=2', 'tcp', 'fsc']
        end
    end
end
