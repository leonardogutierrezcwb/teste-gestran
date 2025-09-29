# 🧪 Desafios de QA e Automação

Este repositório concentra os **desafios técnicos de QA** realizados, com foco em **testes manuais, automação, APIs, SQL e BDD**.  
A estrutura está organizada por entregáveis, cobrindo diferentes competências práticas de qualidade de software.

---

## 📂 Estrutura do Repositório

- **Desafio1.gherkin**  
  Cenários de teste escritos em **BDD (Gherkin)** para validar fluxos críticos do sistema.

- **Desafio2.xlsx**  
  Planilha com **documentação de bugs e casos de teste**, incluindo severidade, prioridade e evidências.

- **Desafio3_consultas.sql**  
  Scripts de **consultas SQL** para extração e validação de dados em base relacional.

- **desafio4.json**  
  **Collection Postman** com chamadas à API Reqres, incluindo testes automatizados e registros de inconsistências.

- **reqres_api.robot**  
  Suite de **testes automatizados em Robot Framework**, cobrindo endpoints REST da API Reqres.

- **playwright.config.ts** e diretório **tests/**  
  Configuração e testes automatizados em **Playwright + TypeScript** para validação funcional da interface.

- **package.json / package-lock.json**  
  Configuração do projeto Node.js com dependências para execução dos testes.

- **.gitignore**  
  Arquivo de exclusão para manter o repositório limpo, evitando incluir relatórios, cache e dependências locais.

- **page-elements.png**  
  Evidência visual dos elementos mapeados para automação.

---

## 🎯 Objetivo

Reunir práticas de **QA Manual e Automatizado**, demonstrando habilidades em:

- Criação de cenários **BDD**  
- Automação de testes **Web (Playwright)**  
- Automação de testes **API (Postman, Robot Framework)**  
- Consultas **SQL** para validação de dados  
- Registro e análise de defeitos  

---

## 🚀 Como Executar os Testes

### Playwright
```bash
# Executar todos os testes
npm test

# Executar em modo headed (com navegador visível)
npm run test:headed

# Gerar e abrir relatório em HTML
npm run test:with-report
```

### Robot Framework
```bash
# Executar testes da suite Robot
robot reqres_api.robot
```

### Postman
- Importar o arquivo **desafio4.json** no Postman.  
- Executar os requests na collection e validar os testes embutidos.

---

✍️ **Autor**: Leonardo Gutierrez  
📌 Foco: **QA | Testes Automatizados | Testes Manuais | API | SQL | BDD**
