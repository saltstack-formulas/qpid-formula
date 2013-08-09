{% set pkg = salt['grains.filter_by']({
  'Debian': {
    'name': 'qpidd',
    'service': 'qpidd',
  },
  'RedHat': {
    'name': 'qpid-cpp-server',
    'service': 'qpidd',
  },
}) %}

qpidd:
  pkg:
    - installed
    - name: {{ pkg.name }}
  service:
    - running
    - name: {{ pkg.service }}
    - enable: True
