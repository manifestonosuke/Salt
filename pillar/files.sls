{% if grains['os'] == ('RedHat', 'CentOS','Fedora','Gentoo','Debian'): %}
message_file=/var/log/messages
{% elif grains['os'] == Ubuntu %}
message_file=/var/log/syslog
{% endif %}

