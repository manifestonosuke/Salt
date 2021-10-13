dekstop:
  pkg.installed:
    - pkgs:
      - ktorrent
      - amarok
      - skrooge
      - calibre
      - {{ pillar ['internet']['firefox'] }} 
      - {{ pillar ['internet']['chromium'] }}
      - keepassx
      - {{ pillar ['internet']['thunderbird'] }}
      - vlc
