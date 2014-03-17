vagrant-chef
============

Vagrant with chef provisioning.
LAMP version for Debian 7 aka Wheezy.

Requirements
------------
- Ruby

- [Vagrant](http://www.vagrantup.com/downloads.html)

  - with plugin vagrant-vbox-snapshot which is awesome for testing provisions
    ```
    vagrant plugin install vagrant-vbox-snapshot
    ```

  - with plugin vagrant-omnibus to install chef to the most recent version
    ```
    vagrant plugin install vagrant-omnibus
    ```

  - with plugin vagrant-berkshelf to install Berkshelf for recipes dependencies
    ```
    vagrant plugin install vagrant-berkshelf
    ```

  - with plugin vagrant-cachier to speed up vagrant
    ```
    vagrant plugin install vagrant-cachier
    ```

- [Chef Solo](http://docs.opscode.com/install_omnibus.html)

- [Berkshelf](http://berkshelf.com/)


Installation
------------

```
berks install -p chef/cookbooks/vendor
vagrant up
```