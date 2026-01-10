This project demonstrates a production-ready log management pipeline using shell scripting and Ansible.

Runs a dummy application that generates logs on multiple remote servers
Archives application logs using an existing shell script
Uses Ansible to orchestrate execution across hosts
Collects archived logs centrally on the Ansible controller

ansible-labs/
├── app_log_archive/
│   ├── playbooks/
│   │   └── log_pipeline.yml
│   ├── scripts/
│   │   ├── mydummyapp.sh
│   │   └── log_cleanup.sh
│   └── outputs/
│       └── archives/
├── inventory/
│   └── hosts
└── README.md

1.mydummyapp.sh ======= writes logs to /var/log/myapp
2.cleanup.sh    ======= archives the logs

Ansible playbooks/

1.Copies the scripts to remote hosts
2.executes the scripts and then pulls the logs to controller

ansible-playbook playbooks/log_pipeline.yml -i inventory/hosts

Author

Kalyan Jalli
Cloud & DevOps Engineer
GitHub: https://github.com/cloudopsjalli
