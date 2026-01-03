# System disk monitoring and ram usagae Automation

This project automates daily Linux maintenance tasks across multiple servers using Ansible.

## Use Case
- Disk usage
- ram usage


## Scripts
| Script | Purpose |
|------|--------|
| disk_alert.sh        | Alerts users when disk size crosses threshold |

|ram_free.sh   | Alerts when ram goes beyond the threshold |


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
ansible-playbook -i  hosts ansible-labs/disk_memory_info/playbooks/disk_usage_alert.yml


