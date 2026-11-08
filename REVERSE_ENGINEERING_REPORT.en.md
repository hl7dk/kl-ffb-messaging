# REVERSE_ENGINEERING_REPORT.en.md

## Target repository
- **Name:** kl-ffb-messaging
- **URL:** https://github.com/hl7dk/kl-ffb-messaging
- **Default branch (upstream):** master
- **Base commit analyzed:** 05211c6 (Update README.md)
- **Project version:** 0.1.0 (sushi-config.yaml), status draft
- **Local working folder:** C:\Users\User\audit-repos\kl-ffb-messaging
- **Audit folder:** C:\Users\User\audit-repos\audit-work
- **Audit date/time:** 2026-11-08 (local time)
- **Environment:** Windows, PowerShell 5.1, Git 2.49.0, Python 3.12.14

---

## A. General diagnosis

### Architecture identified
FHIR R4 Implementation Guide (IG) for system-to-system messaging in social care (Danish FFB standard). Built with SUSHI.

Structure:
- `sushi-config.yaml` — IG configuration (id, canonical, name, version, dependencies, menu)
- `ig.ini` — points to the generated ImplementationGuide in fsh-generated/resources/
- `input/fsh/` — 13 FSH files with profile definitions (Citizen, Consent, RelatedPerson, Guardian, Order, DocumentReference, Account, MatterOfInterest, ParticipatingOrganization, Terminology, Extensions, etc.)
- `input/pagecontent/` — Markdown pages (index.md)
- `input/images/` and `input/images-sources/` — images
- `input/ignoreWarnings.txt` — warning suppression
- Build scripts: `_genonce.sh/.bat`, `_gencontinuous.sh/.bat`, `_updatePublisher.sh/.bat`
- `.gitignore` — ignores /fsh-generated, /input-cache, /output, /out, /temp, /template

### Technologies and dependencies
- SUSHI (FHIR Shorthand)
- FHIR R4 (fhirVersion: 4.0.1)
- Dependencies: hl7.fhir.dk.core 1.1.0, dk.fhir.ig.kl.common.caresocial current
- IG Publisher (publisher.jar, not versioned in Git)
- Java (to run publisher.jar)

### Maintenance status
- Active: version 0.1.0 draft, multiple commits
- Last commit: 05211c6 (Update README.md)
- Public build: https://build.fhir.org/ig/hl7dk/kl-ffb-messaging/
- No local CI/CD configured (no .github/workflows)
- No automated tests visible

### Existing test mechanisms
- No automated tests
- IG build via IG Publisher (external)

### Investigation limitations
- SUSHI and IG Publisher not installed → impossible to execute the build locally
- Analysis based on static inspection of configuration and FSH files

---

## B. Problems found

| ID | Location | Problem | Status | Severity | Evidence |
|----|----------|---------|--------|----------|----------|
| REA-FFB-001 | `_genonce.sh/.bat`, `_updatePublisher.sh/.bat` | `publisher.jar` not versioned in Git (in .gitignore) → build does not work after clone without manual download | CONFIRMED (static) | P2 | .gitignore ignores /input-cache; scripts search for publisher.jar in input-cache or parent folder |
| REA-FFB-002 | Absent | No CI/CD configured (no .github/workflows) | CONFIRMED (static) | P3 | No .github directory in repository |
| REA-FFB-003 | Absent | No automated tests | CONFIRMED (static) | P3 | No test files found |
| REA-FFB-004 | `_genonce.sh:5`, `_genonce.bat:6` | Build scripts make network call (curl/ping) to tx.fhir.org to check connectivity | CONFIRMED (static) | P3 | Line 5 of .sh and line 6 of .bat |
| REA-FFB-005 | `_genonce.bat:27` | `PAUSE` at end interrupts automation on Windows | CONFIRMED (static) | P3 | Line 27 of .bat |

### No P0 or P1 problems
No critical problem confirmed.

---

## C. Recurring problems
Not enough history to identify recurring documented problems. No issues/PRs verified in this session.

---

## D. Undocumented errors
REA-FFB-001 to REA-FFB-005 were not documented in issues/PRs.

---

## E. Performance
No relevant performance opportunities in a FHIR IG (build executed externally via build.fhir.org).

---

## F. Technical improvements
1. Version publisher.jar or document download process clearly (REA-FFB-001)
2. Add CI/CD with GitHub Actions for IG build (REA-FFB-002)
3. Add IG/FSH validation tests (REA-FFB-003)
4. Document network call to tx.fhir.org in build scripts (REA-FFB-004)
5. Remove PAUSE from _genonce.bat or make conditional (REA-FFB-005)

---

## G. Execution plan
All improvements are independent and low risk, but there is no complex source code to fix. These are build infrastructure improvements.

---

## H. Expected result
More reproducible build, automated CI/CD, validation tests, clear documentation of external dependencies.

---

## Malware and threat analysis (static)
**Result:** No indicator identified by the static analysis performed.
- Only configuration files (YAML, INI, FSH, MD), build scripts (BAT, SH) and images
- Build scripts make curl/ping to tx.fhir.org (official FHIR terminology server) — legitimate network call, not suspicious
- _updatePublisher downloads publisher.jar from https://github.com/HL7/fhir-ig-publisher/releases/ (official HL7 source)
- No credentials, keys, tokens or passwords embedded
- No suspicious shell commands, subprocess, exec, eval, persistence, obfuscation or data exfiltration
- It is not stated that the project is free of malware

---

## Mandatory final questions
1. **Which critical bugs were confirmed?** None P0/P1.
2. **Which recurring problems have developers not yet resolved?** Not enough history.
3. **Which important errors were not documented?** publisher.jar not versioned, no CI/CD, no tests, tx.fhir.org network call, PAUSE in .bat.
4. **Which performance opportunities were found?** None relevant.
5. **Which security and reliability improvements are justifiable?** Version publisher.jar, add CI/CD, add tests, document network call.
6. **Which fixes can be made quickly?** Document publisher.jar, conditional PAUSE, document tx.fhir.org.
7. **Which are the three contributions with highest technical value?** (a) CI/CD for IG build, (b) FSH validation tests, (c) onboarding documentation (publisher.jar).
8. **Which fixes should be avoided for lack of evidence?** None — all are well-founded build infrastructure improvements.
9. **Which modifications do you recommend implementing first?** Onboarding documentation (publisher.jar) and CI/CD.
