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
1. **Clone the repo**


```bash
git clone https://github.com/<your-username>/devops-intern-final.git
cd devops-intern-final
