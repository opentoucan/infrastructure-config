# Opentofu

Reusable modules in subdirectories are used to provision provider resources.

>[!NOTE]
>In a production environment I would advocate for versioned modules in separate git repositories to ensure idempotency and testability



```sh
📁 opentofu
├── 📁 env       # environment specific variables in *.tfvar files
└── 📁 modules   # re-useable modules
```

## <img src="https://www.runatlantis.io/hero.png" alt="drawing" width="50"/> [Atlantis](https://www.runatlantis.io/)

Atlantis is used as an OpenTofu pull request automation runner. It solves the problem of configuration in your trunk branch not reflecting the actual state of your infrastructure due to the flaky/downright unreliable provider APIs that break on `tofu apply`.

Atlantis runs against every pull request and only allows merging of the branch once the plan has been applied successfully.


# Ansible

Playbooks are used to logically separate the application provisioning.

>[!NOTE]
>Ideally Ansible should be ran in an automation platform like Ansible Tower to manage environments, security such as SSH keys, and RBAC control. This is however more overhead and effort to run than I would like for a homelab scenario, so I need to draw the line somewhere.
Instead I just run this configuration off my local machine to limit the blast radius for SSH keys being leaked, and then requiring rotation in another platform.

## <img src="https://repository-images.githubusercontent.com/46383942/687a7000-5c7e-11e9-8235-51e9db9bfd68" alt="molecule image" width="50"> [Molecule](https://ansible.readthedocs.io/projects/molecule/)

Molecule is used to test the playbooks by creating an ephemeral environment on the local machine in a docker container, running the playbook against it, running tests, and then destroying the container
