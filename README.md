vagrant-chef
============

Vagrant with chef provisioning.
LAMP version for Debian 7 aka Wheezy.

Requirements
------------
- Ruby

- [Vagrant](http://www.vagrantup.com/downloads.html)

  - with plugin vagrant-omnibus
    ```
    vagrant plugin install vagrant-omnibus
    ```

  - with plugin vagrant-berkshelf
    ```
    vagrant plugin install vagrant-berkshelf
    ```

  - with plugin vagrant-cachier
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