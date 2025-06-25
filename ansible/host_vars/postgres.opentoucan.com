pgbackrest_stanzas:
    - name: backup
      pg_config:
     # Local pg server
        - path: "/var/lib/postgresql/{{ postgresql_version }}/main"
      schedules:
        - backup_type: full
          oncalendar: 'Weekly'
        - backup_type: diff
          oncalendar: 'Daily'
      extra:
        backup-standby: "n"
pgbackrest_conf_extra: |
  [global:archive-push]
  compress-level=3
pgbackrest_repos:
    # Backup to S3
    - path: "/pgbackrest"
      retention-full: "7"
      retention-diff: "3"
      type: s3
      s3-bucket: opentoucan-postgres-backup
      s3-endpoint: fsn1.your-objectstorage.com
      s3-region: fsn1
      s3-key: "{{ lookup('ansible.builtin.env', 'S3_BACKUP_KEY', default=undef()) }}"
      s3-key-secret: "{{ lookup('ansible.builtin.env', 'S3_BACKUP_SECRET', default=undef()) }}"
      s3-uri-style: path
