
/etc/profile.d/local.bashrc.sh:
  file.managed:
    - source : salt://common/bashrc
    - user: root
    - group: local
    - mode: 755

{% if grains['os_family'] == 'Suse' -%}
  adm:
    group.present:
      - gid: 4
      - system: True
{% endif %}

{{ pillar ['data'] }}/local/bin:
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

{{ pillar ['data'] }}/local/env.d/bashrc.root:
  file.managed:
    - source : salt://common/bashrc.root
    - mode: 755
    - user: root
    - group: local

{{ pillar ['data'] }}/local/env.d/bashrc.user:
  file.managed:
    - source : salt://common/bashrc.user
    - mode: 755
    - user: root
    - group: local




/etc/salt/minion.d/:
  file.directory


/etc/salt/minion.d/minion:
  file.managed:
    - source: salt://common/minion
    - template: jinja
    - user: root
    - perm: 755
