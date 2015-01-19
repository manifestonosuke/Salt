dekstop:
  pkg.installed:
    - pkgs:
      - ktorrent
      - amarok
      - skrooge
      - calibre
      - rekonq
      - {{ pillar ['internet']['firefox'] }} 
      - {{ pillar ['internet']['chromium'] }}
      - keepassx
      - {{ pillar ['internet']['thunderbird'] }}
      - vlc
