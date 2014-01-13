base:
  'base-*':
    - server.base
    - server.devel
    - server.troubleshooting
    - server.network
    - users.jianingy

  'vg*':
    - server.base
    - server.devel
    - server.troubleshooting
    - server.network
    - users.jianingy

  'dev*':
    - server.base
    - server.salt-minion
    - server.devel
    - server.troubleshooting
    - server.network
    - server.kvm
    - users.jianingy

  'iota.nostack.in':
    - server.base
    - server.salt-minion
    - server.devel
    - server.troubleshooting
    - server.network
    - server.kvm
    - users.jianingy
    - desktop.jianingy

  'iostack':
    - server.base
    - server.salt-minion
    - server.devel
    - server.troubleshooting
    - server.network
    - server.kvm
    - users.jianingy
    - desktop.jianingy
