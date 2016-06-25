
/root/.bashrc:
  file.append:
    - source : salt://common/bashrc

{% if grains['os_family'] == 'Suse' -%}
  adm:
    group.present:
      - gid: 4
      - system: True
{% endif %}

/data/local/bin:
  file.directory:
    - user: root
    - group: local
    - dir_mode: 755
    - makedirs: True

/{{ pillar ['data'] }}/local/end.d/:
  file.directory:
    - user: root
    - group: local
    - dir_mode: 755

/etc/salt/minion.d/:
  file.directory


/etc/salt/minion.d/minion:
  file.managed:
    - source: salt://common/minion
    - template: jinja
    - user: root
    - perm: 755
