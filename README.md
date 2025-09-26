# DevOps Intern Final — Muchamat Riyan Khamdani


**Date:** 2025-09-26


## Project Overview
This repository demonstrates a minimal end-to-end DevOps workflow using open-source tools: Linux scripting, Docker, GitHub Actions (CI), Nomad job deployment, and log collection with Grafana Loki. Each step produces artifacts/configs that feed the next step.


## Contents
- `README.md` (this file)
- `hello.py` — sample Python app that prints "Hello, DevOps!"
- `scripts/sysinfo.sh` — shell script that prints user, date, disk usage
- `Dockerfile` — containerizes `hello.py`
- `.github/workflows/ci.yml` — GitHub Actions workflow to run `hello.py` on push
- `nomad/hello.nomad` — Nomad job spec to run the container
- `monitoring/loki_setup.txt` — Loki setup and how-to view logs


## How to use
1. Clone the repo
```bash
git clone https://github.com/<your-username>/devops-intern-final.git
cd devops-intern-final

2. Linux script
Make the script executable and run it:
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh

3. Build & run Docker container
# build
docker build -t devops-intern-hello:latest .
# run
docker run --rm devops-intern-hello:latest

4. CI/CD
The GitHub Actions workflow in .github/workflows/ci.yml runs python hello.py on every push.
After you push this repo to GitHub, you'll see the Actions run under the repository's Actions tab. Copy the badge (already included below) to show status.

5. Nomad
To run the Nomad job (assuming you have Nomad and Docker installed locally):
nomad job run nomad/hello.nomad
nomad job status hello

6. Monitoring (Loki)
See monitoring/loki_setup.txt for commands to start Loki via Docker and view container logs forwarded to Loki.

Status badge
Notes

Replace <your-username> with your GitHub username in the README after you create the repo.

The Nomad job references the image devops-intern-hello:latest—if you run Nomad on a machine without the local image, push the image to a registry and update the job image field accordingly.
