{% if grains['os_family'] == 'Debian' %}

mysql_debconf_install:
  pkg.installed:
    - name:debconf 
{% endif %}

mysql_server_install:
  pkg.installed:
    - name:mariadb-server
