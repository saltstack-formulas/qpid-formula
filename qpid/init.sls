{% set pkg = salt['grains.filter_by']({
  'Debian': {'name': 'qpid-client'},
  'RedHat': {'name': 'qpid-cpp-client'},
}) %}

qpid:
  pkg.installed:
    - name: {{ pkg.name }}
