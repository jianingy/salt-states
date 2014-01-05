salt_ppa:
  pkgrepo.managed:
    - ppa: saltstack/salt
  
salt-minion:
  pkg:
    - installed
  service:
    - running
