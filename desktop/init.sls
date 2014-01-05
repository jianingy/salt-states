# -*- mode: YAML -*-

{% set user_id = 'jianingy' %}
{% set user_home = '/home/jianingy' %}

desktop_softwares:
  pkg.installed:
    - pkgs:
      - xmonad
      - python-keyring

vcsh_x11_init:
  cmd.run:
    - name: ln -snfv ../available.d/x11.vcsh .
    - cwd: {{ user_home }}/.config/mr/config.d
    - user: {{ user_id }}

vcsh_x11_update:
  cmd.run:
    - name: vcsh x11 update
    - cwd: {{ user_home }}
    - user: {{ user_id }}

xmonad_recompile:
  cmd.run:
    - name: xmonad --recompile
    - cwd: {{ user_home }}
    - user: {{ user_id }}
