zabbix-repository [![Build Status](https://travis-ci.org/xcezx/ansible-zabbix-repository.svg)](https://travis-ci.org/xcezx/ansible-zabbix-repository)
========

Install zabbix-release

Role Variables
--------------

- `zabbix_release_rpm_url`

Example Playbook
-------------------------

    - hosts: servers
      roles:
         - { role: xcezx.zabbix-repository }

License
-------

BSD
