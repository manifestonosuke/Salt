{% set data = pillar ['data'] %}

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

/{{ data }}/local/bin:
  file.directory:
    - user: root
    - group: local
    - dir_mode: 755
    - makedirs: True

/{{ data }}/local/env.d/:
  file.directory:
    - user: root
    - group: local
    - dir_mode: 755

/{{ data }}/local/env.d/bashrc.root:
  file.managed:
    - source : salt://common/bashrc.root
    - mode: 755
    - user: root
    - group: local

/{{ data }}/local/env.d/bashrc.user:
  file.managed:
    - source : salt://common/bashrc.user
    - mode: 755
    - user: root
    - group: local

/etc/salt/minion.d/:
  file.directory


/etc/salt/minion.d/minion.conf:
  file.managed:
    - source: salt://common/minion
    - template: jinja
    - user: root
    - perm: 755

/root/.tmux.conf:
  file.managed:
    - source: salt://common/tmux.conf
