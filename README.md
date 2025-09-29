# 🧪 Desafios de QA e Automação

Este repositório foi criado para agrupar os **desafios técnicos de QA** resolvidos, com foco em **testes manuais, automação, API, SQL e BDD**.  
A estrutura contém exemplos práticos de **Playwright, Robot Framework, Postman e SQL**.

---

## 📋 Requisitos

Antes de executar os testes, garanta que você tenha instalado:

- **Node.js** (>= 18.x recomendado)  
- **npm** (instalado junto com Node.js)  
- **Python 3.x** (para executar Robot Framework)  
- **Robot Framework** (caso queira rodar a suíte `reqres_api.robot`)  

### Instalações adicionais

- Robot Framework Requests (para testes de API com Robot):  
  ```bash
  pip install robotframework-requests
  ```

- Navegadores do Playwright:  
  ```bash
  npx playwright install
  ```

---

## 🛠️ Instalação

1. Clone este repositório:
   ```bash
   git clone https://github.com/leonardogutierrezcwb/teste-gestran.git
   cd teste-gestran
   ```

2. Instale as dependências do projeto:
   ```bash
   npm install
   ```

3. Instale os navegadores usados pelo Playwright:
   ```bash
   npx playwright install
   ```

---

## 🚀 Executando os testes

### 🔹 Playwright

```bash
# Rodar todos os testes
npm test

# Rodar em modo headed (com navegador visível)
npm run test:headed

# Gerar relatório em HTML
npm run test:with-report
```

### 🔹 Robot Framework

```bash
robot reqres_api.robot
```

### 🔹 Postman (API)

1. Abra o Postman  
2. Importe o arquivo **desafio4.json**  
3. Configure o header de autenticação, se necessário:  
   ```
   x-api-key: reqres-free-v1
   ```
4. Execute a collection e verifique os testes embutidos  

### 🔹 SQL

No arquivo **Desafio3_consultas.sql** estão disponíveis queries para:  
- Relacionar produtos e fornecedores  
- Relacionar clientes, vendedores e formas de pagamento  

Execute em qualquer banco compatível para validação (MySQL, PostgreSQL, etc.) garantindo que as tabelas existam.

---

## 📂 Estrutura do Repositório

| Arquivo / Pasta               | Descrição |
|-------------------------------|-----------|
| `Desafio1.gherkin`            | Cenários de teste em **BDD (Gherkin)** |
| `Desafio2.xlsx`               | Planilha com **bugs e casos de teste** |
| `Desafio3_consultas.sql`      | **Consultas SQL** para validação de dados |
| `desafio4.json`               | **Collection Postman** para API Reqres |
| `reqres_api.robot`            | Testes automatizados com **Robot Framework** |
| `playwright.config.ts`        | Configuração do Playwright |
| `package.json` / `package-lock.json` | Dependências e scripts do projeto |
| `tests/`                      | Testes E2E com **Playwright + TypeScript** |
| `.gitignore`                  | Arquivo de exclusão para manter repositório limpo |
| `README.md`                   | Documentação do repositório |

---

## 🎯 Objetivo

Demonstrar práticas de **QA Manual e Automatizado**, com foco em:

- Criação de cenários **BDD**  
- Automação de testes **Web (Playwright)**  
- Automação de testes **API (Postman e Robot Framework)**  
- Execução de **consultas SQL** para validação de dados  
- Registro e documentação de defeitos  

---

✍️ **Autor**: Leonardo Gutierrez  
📌 **Foco**: QA | Testes Automatizados | Testes Manuais | API | SQL | BDD
