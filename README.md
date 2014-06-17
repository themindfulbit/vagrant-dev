# Development Vagrantfile

A Vagranfile to quickly (re)create my preferred development environment. 
Support for local dev & Digital Ocean.

## Installation

To initialize locally, clone this repository and run:

```
vagrant up
```

To deploy to Digital Ocean, you need to install the [vagrant-digitalocean](https://github.com/smdahlen/vagrant-digitalocean)
provider plugin. 

Then configure your `~/.vagrant.d/Vagrantfile` to contain the following:

```
Vagrant.configure("2") do |config|

  config.vm.provider :digital_ocean do |provider, override|
    override.ssh.private_key_path = '~/.ssh/id_dsa'
    override.vm.box_url = 'https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box'

    provider.client_id = 'MY-SECRET-ID'
    provider.api_key = 'MY-SUPER-SECRET-API-KEY'
  end

end
```

Then in the cloned repository, you can run:

```
vagrant up --provider digital_ocean
```

## References 

- [](http://blog.publysher.nl/2013/07/infra-as-repo-using-vagrant-and-salt.html) - Helped with deploying to DO.
