base:

  'dev*':
    - server.base
    - server.salt-minion
    - server.devel
    - server.troubleshooting
    - server.network
    - server.kvm
    - users.jianingy

  'iota.nostack.in,iostack':
    - server.base
    - server.salt-minion
    - server.devel
    - server.troubleshooting
    - server.network
    - server.kvm
    - users.jianingy
    - desktop.jianingy
