/data:
  mount.mounted:
    - device: /dev/sda2
    - fstype: ext4
    - mkmnt: True
    - opts:
      - defaults
  file.directory:
    - user: root
    - group: adm
    - mode: 755
    - makedirs: False

{{ pillar['message_file'] }}:
  file.managed:
    - mode: 755 
    - group: adm
