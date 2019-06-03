{% if grains['os_family'] == 'Debian' %}

mysql_debconf_install:
  pkg.installed:
    - name: debconf 

mysql_debconf_settings:
  debconf.set:
    - name: mysql-server
    - data: 
        'mysql-server/root_password' : {'type' : 'password' , 'value' : 'temppass'}
        'mysql-server/root_password_again': {'type' : 'password', 'value' : 'temppass'}
    - require:
      - pkg: debconf
    - require-in:
      - mysql-server_install

{% endif %}

mysql_server_install:
  pkg.installed:
    - name: mysql-server
