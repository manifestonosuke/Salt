
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

/data/env.d:
  file.directory:
    - user: root
    - group: local
    - dir_mode: 755
