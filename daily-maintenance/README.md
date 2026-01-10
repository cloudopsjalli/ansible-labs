# Daily System Maintenance Automation

This project automates daily Linux maintenance tasks across multiple servers using Ansible.

## Use Case
- Disk cleanup
- System health checks
- Conditional reboot after patching
- Centralized logging on Ansible controller

## Scripts
| Script | Purpose |
|------|--------|
| cleanup.sh        | Cleans unused packages and cache |

| health_check.sh   | Collects system health metrics |

| reboot_if_required.sh | Reboots system if required |

## Playbook
`maintenance.yml` performs the following:
1. Copies scripts to remote servers
2. Executes scripts sequentially with pauses
3. Collects outputs per host
4. Stores logs in controller `outputs/` directory

## Logs
- Logs are stored per-host
- Location: `outputs/<hostname>.log`
- Logs are excluded from Git using `.gitignore`

## How to Run

```bash
ansible-playbook -i daily-maintenance/playbooks/hosts daily-maintenance/playbooks/daily_maintenance.yml

Author

Kalyan Jalli
Cloud & DevOps Engineer
GitHub: https://github.com/cloudopsjalli


