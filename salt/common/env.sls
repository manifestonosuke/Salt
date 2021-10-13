
/root/.bashrc:
  file.append:
    - source : salt://common/files/bashrc

/root/.vimrc:
  file.managed:
    - source : salt://common/files/vimrc

/root/.tmux.conf:
  file.managed:
    - source : salt://common/files/vimrc


{% if grains['os_family'] == 'Suse' -%}
  adm:
    group.present:
      - gid: 4
      - system: True
{% endif %}

/data/env.d:
  file.directory
