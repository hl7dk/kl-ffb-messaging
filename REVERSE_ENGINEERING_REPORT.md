# REVERSE_ENGINEERING_REPORT.md

## Repositório alvo
- **Nome:** kl-ffb-messaging
- **URL:** https://github.com/hl7dk/kl-ffb-messaging
- **Branch padrão (upstream):** master
- **Commit-base analisado:** 05211c6 (Update README.md)
- **Versão do projeto:** 0.1.0 (sushi-config.yaml), status draft
- **Pasta de trabalho local:** C:\Users\User\audit-repos\kl-ffb-messaging
- **Pasta de auditoria:** C:\Users\User\audit-repos\audit-work
- **Data/horário da auditoria:** 2026-11-08 (horário local)
- **Ambiente:** Windows, PowerShell 5.1, Git 2.49.0, Python 3.12.14

---

## A. Diagnóstico geral

### Arquitetura identificada
Implementation Guide (IG) FHIR R4 para mensagens de sistema a sistema em assistência social (padrão FFB dinamarquês). Construído com SUSHI.

Estrutura:
- `sushi-config.yaml` — configuração do IG (id, canonical, name, version, dependências, menu)
- `ig.ini` — aponta para o ImplementationGuide gerado em fsh-generated/resources/
- `input/fsh/` — 13 arquivos FSH com definições de profiles (Citizen, Consent, RelatedPerson, Guardian, Order, DocumentReference, Account, MatterOfInterest, ParticipatingOrganization, Terminology, Extensions, etc.)
- `input/pagecontent/` — páginas Markdown (index.md)
- `input/images/` e `input/images-sources/` — imagens
- `input/ignoreWarnings.txt` — supressão de avisos
- Scripts de build: `_genonce.sh/.bat`, `_gencontinuous.sh/.bat`, `_updatePublisher.sh/.bat`
- `.gitignore` — ignora /fsh-generated, /input-cache, /output, /out, /temp, /template

### Tecnologias e dependências
- SUSHI (FHIR Shorthand)
- FHIR R4 (fhirVersion: 4.0.1)
- Dependências: hl7.fhir.dk.core 1.1.0, dk.fhir.ig.kl.common.caresocial current
- IG Publisher (publisher.jar, não versionado no Git)
- Java (para rodar o publisher.jar)

### Estado de manutenção
- Ativo: versão 0.1.0 draft, múltiplos commits
- Último commit: 05211c6 (Update README.md)
- Build público: https://build.fhir.org/ig/hl7dk/kl-ffb-messaging/
- Nenhum CI/CD local configurado (sem .github/workflows)
- Nenhum teste automatizado visível

### Mecanismos de testes existentes
- Nenhum teste automatizado
- Build do IG via IG Publisher (externo)

### Limitações da investigação
- SUSHI e IG Publisher não instalados → impossível executar o build localmente
- Análise baseada em inspeção estática de configuração e arquivos FSH

---

## B. Problemas encontrados

| ID | Localização | Problema | Status | Severidade | Evidência |
|----|-------------|----------|--------|------------|-----------|
| REA-FFB-001 | `_genonce.sh/.bat`, `_updatePublisher.sh/.bat` | `publisher.jar` não versionado no Git (está no .gitignore) → build não funciona após clone sem download manual | CONFIRMADO (estática) | P2 | .gitignore ignora /input-cache; scripts buscam publisher.jar em input-cache ou pasta pai |
| REA-FFB-002 | Ausente | Nenhum CI/CD configurado (sem .github/workflows) | CONFIRMADO (estática) | P3 | Nenhum diretório .github no repositório |
| REA-FFB-003 | Ausente | Nenhum teste automatizado | CONFIRMADO (estática) | P3 | Nenhum arquivo de teste encontrado |
| REA-FFB-004 | `_genonce.sh:5`, `_genonce.bat:6` | Scripts de build fazem chamada de rede (curl/ping) para tx.fhir.org para verificar conectividade | CONFIRMADO (estática) | P3 | Linha 5 do .sh e linha 6 do .bat |
| REA-FFB-005 | `_genonce.bat:27` | `PAUSE` no final interrompe automação em Windows | CONFIRMADO (estática) | P3 | Linha 27 do .bat |

### Sem problemas P0 ou P1
Nenhum problema crítico confirmado.

---

## C. Problemas recorrentes
Não há histórico suficiente para identificar problemas recorrentes documentados. Não há issues/PRs verificados nesta sessão.

---

## D. Erros não documentados
REA-FFB-001 a REA-FFB-005 não estavam documentados em issues/PRs.

---

## E. Performance
Não há oportunidades de performance relevantes em um IG FHIR (build executado externamente via build.fhir.org).

---

## F. Melhorias técnicas
1. Versionar o publisher.jar ou documentar claramente o processo de download (REA-FFB-001)
2. Adicionar CI/CD com GitHub Actions para build do IG (REA-FFB-002)
3. Adicionar testes de validação do IG/FSH (REA-FFB-003)
4. Documentar a chamada de rede para tx.fhir.org nos scripts de build (REA-FFB-004)
5. Remover PAUSE do _genonce.bat ou torná-lo condicional (REA-FFB-005)

---

## G. Plano de execução
Todas as melhorias são independentes e de baixo risco, mas não há código-fonte complexo para corrigir. São melhorias de infraestrutura de build.

---

## H. Resultado esperado
Build mais reproduzível, CI/CD automatizado, testes de validação, documentação clara de dependências externas.

---

## Análise de malware e ameaças (estática)
**Resultado:** Nenhum indicador identificado pela análise estática realizada.
- Apenas arquivos de configuração (YAML, INI, FSH, MD), scripts de build (BAT, SH) e imagens
- Os scripts de build fazem curl/ping para tx.fhir.org (servidor de terminologia FHIR oficial) — chamada de rede legítima, não suspeita
- O _updatePublisher baixa o publisher.jar de https://github.com/HL7/fhir-ig-publisher/releases/ (fonte oficial HL7)
- Nenhuma credencial, chave, token ou senha embutida
- Nenhum comando de shell suspeito, subprocess, exec, eval, persistência, ofuscação ou exfiltração de dados
- Não se afirma que o projeto está livre de malware

---

## Perguntas finais obrigatórias
1. **Bugs críticos comprovados?** Nenhum P0/P1.
2. **Problemas repetitivos não resolvidos?** Não há histórico suficiente.
3. **Erros importantes não documentados?** publisher.jar não versionado, sem CI/CD, sem testes, chamada de rede tx.fhir.org, PAUSE no .bat.
4. **Oportunidades de performance?** Nenhuma relevante.
5. **Melhorias de segurança/confiabilidade justificáveis?** Versionar publisher.jar, adicionar CI/CD, adicionar testes, documentar chamada de rede.
6. **Correções rápidas?** Documentar publisher.jar, remover PAUSE condicional, documentar tx.fhir.org.
7. **Três contribuições de maior valor?** (a) CI/CD para build do IG, (b) testes de validação FSH, (c) documentação de onboarding (publisher.jar).
8. **Correções a evitar por falta de evidência?** Nenhuma — todas são melhorias de infraestrutura bem fundamentadas.
9. **Modificações recomendadas primeiro?** Documentação de onboarding (publisher.jar) e CI/CD.
