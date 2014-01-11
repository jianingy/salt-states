# -*- mode: yaml -*-

{% set user_id = 'jianingy' %}
{% set user_home = pillar['users'][user_id]['home'] %}


{{ user_id }}:
  user.present:
    - fullname: Jianing Yang
    - password: {{ pillar['users']['jianingy']['password'] }}
    - shell: /bin/zsh
    - home: {{ user_home }}
    - createhome: False
    - groups:
      - sudo
      - libvirtd

create_home_manually:
  cmd.run:
    - name: mkdir {{ user_home }} && chown {{ user_id }}:{{user_id}} {{ user_home }}
    - unless: test -d {{ user_home}}

  ssh_auth:
    - present
    - user: {{ user_id }}
    - names:
      - ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA0LdN0KZGLkYYD8hMg5/i/o8fz5f9kwCtsAcUcqiMqLwBJ9CFg1EN5nC1KLHqLSbKSrqfdzym5ACzpv0A8kbFL1g91FmKZAPFRioY8x9DDrfxsMMJspdXKdQacAQUHcjEjJ/IUaP2h3FCJuhNYci7g53mHsgnjnYozIPcMqCfhw4xZtUyPQLDEwlilHOyOuPpVjjrS6HvN3BIkSiW2mBtO3QB/aQpHrvCqDywd+iCdAos5cczlc4D/FPNCwGUkH+EYGCwMEasstRavXp8NQxh7clhzrety83t5qLkwk3pPq10eC2wwClAPRJaHUoTb4r3QzkJ6Q3cZjPxOfPvs/wuFQ== jianingy@thinkpad
      - ssh-dss AAAAB3NzaC1kc3MAAACBAIw+AQLjkRy6ejHLuUL+l3Neo6g8rnwCsy3f9hZ3Lo/wSJ2MXA6ZgjdFASfFg3CYruef3IGlYHKlgNEhnmaeKKEgXX40C3pJAB/NzrWf2RTJ/qV9Nnzqooe8mDj9/vQ6mfrKSzXEAqXC/8zgDZg1MVgdpoxZ9+0ip1W1J5wNGbadAAAAFQC4gSEXF6Ok01ygiXKg8N4xAsuPsQAAAIBupcapGYlbS643bn8MIH+D4CK4ck5TZVAuGwEXPj+ArUvW2+Neru0gFlXVHbpDPNad8N6s0izfx0Iluci6g9lKpjPcCMXJVDKse1W/IBpvI0WINRywOuP2J9eD4kIsVMvCVgBV4poPnN+4VIGdkEa/4M9ytYy3KIYGUWVGkxFwrwAAAIBft0F5IrBZ+fGF/BeK5lP30ioa60VFu7S9gj65ykf9c453kqZzUr37i4rekkyJx3RHrM92Ti/5Om7NyByeRh64JKb1bQ3+8xR7ehRVR0c/moL8jKlFVDFQqNukiW1w7uh92roxNfL6VCyrzZ9Dms0CmAVj4gbab81zOryjPtz94w== jianingy@thinkpad

vcsh_init:
  cmd.run:
    - name: vcsh clone https://github.com/jianingy/dotfiles-mr mr
    - user: {{ user_id }}
    - cwd: {{ user_home }}
    - unless: test -d {{ user_home}}/.config/vcsh/repo.d/mr.git

vcsh_update:
  cmd.run:
    - name: mr update
    - user: {{ user_id }}
    - cwd: {{ user_home }}
