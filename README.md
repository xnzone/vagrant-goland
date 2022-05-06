# vagrant-goland

forked from [vagrant-rust-clion](https://github.com/c1nema/vagrant-rust-clion)

Vagrant box based on Ubuntu-1804 (bionic) including preinstalled go and JetBrains Goland (using Projector)

## Usage

To use this image, just clone the repository to a folder of your choice and run: `vagrant up`

After a quick while, the image should be up and running. At that point, the Projector instance is reachable at the following URL (if you did not change the IP settings in the `Vagrantfile` that is):

```
http://192.168.33.10:9999/
```

## Notes

To have your files easily accessible outside the VM as well, place all your project files within the `/vagrant` directory. This directory is directly mapped to the **same** folder the Vargantfile lies in.

