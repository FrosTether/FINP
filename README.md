# Frostoise (FARE)

**FreeBSD-based Operating System with Blockchain Integration**  
Post-2038 Compliant | Built for Quick-Service Restaurants

Frostoise (also referred to as FARE) is a modern, Windows-free operating system designed specifically for restaurant operations. It is built on **FreeBSD** roots and uses blockchain technology for reliable inventory, safety audits, and transaction verification.

## Core Vision
- Make life easier for crew members
- Fix broken specialty monitor handling (burger boards & fry stations)
- Reduce redundancy and human error
- Give operators real data ownership and privacy

## Key Components

| Component              | Description                                      | File |
|------------------------|--------------------------------------------------|------|
| **F2B Bridge**         | Front-to-back communication                      | `F2B_Bridge.py` |
| **Grayson's Wallet**   | Blockchain accounting (5-min blocks, masternodes) | `graysons_wallet.py` |
| **Burger of Things**   | IoT + Voice-to-text ordering                     | `BurgerOfThings.py` |
| **Cherry Eyes**        | Simple end-of-night camera counter               | `chickenfry.py` |
| **Frostpair**          | Web-based inventory & companion app              | `frostpair_inventory.html` |
| **IOTT**               | Temperature monitoring with warnings             | `IOTT.py` |
| **IOTc**               | Camera-based automatic counting                  | `IOTc.py` |

## Quick Start (Linux)

```bash
python3 F2B_Bridge.py &
python3 BurgerOfThings.py