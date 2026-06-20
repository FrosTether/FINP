# FINP
unless you are tied into Burger King you are viewing IP code Fairuse. hit us up 
# Frostoise

**FreeBSD-based Operating System with Blockchain Integration**  
Post-2038 Compliant | Built for Quick-Service Restaurants

Frostoise is a modern, Windows-free operating system designed specifically for restaurant operations. It combines the stability of FreeBSD with blockchain technology for accurate counting, safety audits, compliance, and tamper-proof logging.

## Core Philosophy
- Make life easier for crew members
- Eliminate Windows dependency in back-of-house (PARE)
- Provide real data ownership and privacy
- Build systems that actually work on the floor

## Key Features

- **FreeBSD Foundation** — Berkeley Standard roots, fully post-2038 compliant
- **Blockchain Layer** — Injected for counting, safety audits, and compliance
- **Voice-First Ordering** — Multilingual speech-to-text + text-to-speech
- **Automatic Camera Counting** — IoT camera module (IOTc.py)
- **Real-Time Temperature Monitoring** — Fryer and holding unit gauges (IOTT.py)
- **Front-to-Back Bridge** — Connects ordering to kitchen (F2B_Bridge.py)
- **Crew Sign-Off** — Cryptographic confirmation with Monero-style view keys
- **Specialty Monitor Support** — Properly filters content for kitchen displays (unlike Windows)

## Components

| File                    | Purpose                              |
|-------------------------|--------------------------------------|
| `F2B_Bridge.py`         | Front-to-back communication          |
| `Count.py`              | Fry station inventory system         |
| `IOTT.py`               | Temperature monitoring & alerts      |
| `IOTc.py`               | Camera-based automatic counting      |
| `frostpair_inventory.html` | Web-based inventory counter       |
| `generate_view_key.py`  | Monero-style view keys for stores    |
| `frostoise_vnc_setup.sh`| Easy VNC testing environment         |

## Quick Start (Linux Mint / Ubuntu)

```bash
# Install dependencies
sudo apt update
sudo apt install python3 python3-pip python3-venv

# Run the bridge + IoT modules
python3 F2B_Bridge.py &
python3 IOTT.py &
python3 IOTc.py &