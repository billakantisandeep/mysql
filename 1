{% if grains['os_family'] == 'Redhat' %}
mysql_root_password_set:
  cmd.run:
    - name: mysqladmin --host localhost --user root password 'temppass' 
    - unless: mysql --host localhost --user root --password="temppass" --execute="SELECT 1;"
{% endif %}

mysql_root_user:
  mysql_user.present:
    - name: root
    - password: temppass
    - host: localhost 
