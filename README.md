# Fictional ECL Demo

A small portfolio project: a fictional abnormal checklist ("Hydraulic Pressure Low") written as structured XML, validated with an XSD schema and rendered to an HTML checklist with XSLT.

**This project is FICTIONAL.** The aircraft (Zefira ZF-90), systems and procedure are invented. It is S1000D-inspired only. It does not claim compliance with S1000D or ATA iSpec 2300. Not for operational use.

## Why I built it
As a Young engineer and private student pilot on the Tecnam P2008, I use normal and emergency checklists every flight, and at Air Alliance Flight Center I handled pre-/post-flight checks daily. My recent work at the German Aerospace Center provided me with ability to model flights by phase. I wanted to understand how procedures are written and structured. But also how they are  maintained as data, so I built this demo.

## What is inside
- `xml/hyd-press-low.xml`: the checklist (title, flight phase, applicability, warnings, steps)
- `xsd/checklist.xsd`: the schema that defines what is allowed
- `xsl/checklist.xsl`: the stylesheet that turns the XML into HTML
- `.github/workflows/validate.yml`: checks the XML against the XSD on every commit
- `CHANGELOG.md`: what changed between versions

## Live demo
https://edmabjr.github.io/fictional-ecl-demo/xml/hyd-press-low.xml

## Versions
- v1.0: first checklist, XSD, XSLT, automatic validation
- v1.1: added step S5, no schema or stylesheet change

## What I learned
- Content (XML) is kept separate from layout (XSLT), so adding a step needs no layout change.
- The XSD catches structure errors: wrong order, unknown flight phase, duplicate step id.
- Tags and a changelog make each version traceable.

## Tools
- GitHub (version control, tags, releases, Pages)
- XSD schema validation with xmllint, run by GitHub Actions
- XSLT 1.0 rendered by the web browser


