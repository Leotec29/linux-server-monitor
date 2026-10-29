# Linux Server Monitor

A simple Bash script to monitor basic Linux server resources.

## Features

- Displays the current date and time
- Shows the hostname and system information
- Monitors memory usage
- Monitors disk usage
- Displays alerts when memory or disk usage reaches 80%

## Requirements

- Linux or WSL2 with Ubuntu
- Bash
- Standard Linux utilities: `free`, `df`, `awk`, and `hostname`

## How to run

Clone the repository or download the project, then run:

```bash
chmod +x monitor.sh
./monitor.sh

