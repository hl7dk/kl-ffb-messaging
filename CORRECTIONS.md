# CORRECTIONS.md

## Repositório alvo
- **Nome:** kl-ffb-messaging
- **URL:** https://github.com/hl7dk/kl-ffb-messaging
- **Branch padrão (upstream):** master
- **Commit-base analisado:** 05211c6
- **Data da elaboração:** 2026-11-08 (horário local)
- **Autor:** admeduardovieira (Kilo, REA 6.7.0)

---

## Correções implementadas

Nenhuma correção de código foi implementada, pois o repositório é um IG FHIR/SUSHI com arquivos de configuração e definições FSH, não código-fonte executável. As melhorias identificadas são de infraestrutura de build e documentação.

## Melhorias identificadas (não implementadas)

### REA-FFB-001 — publisher.jar não versionado
**Problema:** O build depende de publisher.jar que não está no Git (está no .gitignore).
**Correção proposta:** Documentar o processo de download do publisher.jar no README ou versionar o arquivo.
**Arquivos:** README.md, _genonce.sh/.bat, _updatePublisher.sh/.bat

### REA-FFB-002 — Sem CI/CD
**Problema:** Nenhum workflow de GitHub Actions configurado.
**Correção proposta:** Adicionar .github/workflows/ig-build.yml para build automático do IG.
**Arquivos:** .github/workflows/ig-build.yml (novo)

### REA-FFB-003 — Sem testes automatizados
**Problema:** Nenhum teste de validação do IG/FSH.
**Correção proposta:** Adicionar testes de validação dos arquivos FSH e do IG gerado.
**Arquivos:** novos arquivos de teste

### REA-FFB-004 — Chamada de rede tx.fhir.org
**Problema:** Scripts de build verificam conectividade com tx.fhir.org.
**Correção proposta:** Documentar esse comportamento no README.
**Arquivos:** README.md

### REA-FFB-005 — PAUSE no _genonce.bat
**Problema:** PAUSE interrompe automação.
**Correção proposta:** Remover PAUSE ou torná-lo condicional.
**Arquivos:** _genonce.bat

---

*Este documento registra melhorias de infraestrutura identificadas, sem alterações de código-fonte.*
