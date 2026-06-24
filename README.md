# 🚀 Rifas - Sistema de Vendas Online de Cotas e Prêmios

Este é um sistema completo e de alto padrão desenvolvido em PHP e MySQL para a comercialização de rifas online, cotas premiadas e sorteios interativos. O projeto conta com design premium responsivo, automatizações inteligentes e integração robusta com gateway de pagamentos.

---

## 💎 Funcionalidades Principais

1. **Painel de Controle Modernizado (`/admin`)**
   - Nova interface premium com visual *Dark Mode* e efeitos *Glassmorphism*.
   - Acompanhamento em tempo real de vendas, faturamento e novos clientes.
   - Gerenciamento completo de rifas, cotas e ganhadores.

2. **Limpeza e Expiração Automática de Pedidos (Cron sem Complicação)**
   - O sistema cancela automaticamente pedidos não pagos após **4 minutos**, liberando os números/cotas para outros compradores.
   - **Como funciona:** O acionamento é feito silenciosamente em segundo plano a partir do navegador do cliente (com atraso de 15 segundos após carregar a página).
   - Não depende de configurações de Cron Job direto na hospedagem.
   - Possui trava de segurança para evitar sobrecarga de requisições ao servidor.

3. **Prevenção de Falhas de Sessão (Ghost Logins)**
   - Proteção inteligente no checkout: se o usuário tiver uma sessão antiga ativa, mas sua conta não existir mais no banco de dados, o sistema encerra a sessão antiga de forma limpa e solicita um novo login. Isso impede erros de conexão na hora de criar o pedido (Erro 500).

---

## 🛠️ Configuração e Instalação

### 1. Importação do Banco de Dados
Importe o arquivo `database.sql` disponível na raiz do repositório no seu servidor de banco de dados MySQL.
*   *Nota:* Este arquivo contém a estrutura de tabelas padrão e configurações necessárias, sem dados confidenciais ou cadastros de clientes antigos.

### 2. Configurações de Acesso ao Banco de Dados
Abra o arquivo [initialize.php](file:///C:/Users/Ruan%20Gomes/Downloads/public_html/initialize.php) e edite os parâmetros de conexão. O sistema diferencia automaticamente se você está em ambiente de testes (`localhost`) ou em produção:

```php
// Modifique os dados abaixo no bloco "else" para as credenciais da sua hospedagem:
if (!defined('DB_USERNAME'))
    define('DB_USERNAME', 'SEU_USUARIO_BANCO');
if (!defined('DB_PASSWORD'))
    define('DB_PASSWORD', 'SUA_SENHA_BANCO');
if (!defined('DB_NAME'))
    define('DB_NAME', 'NOME_DO_BANCO');
```

---

## 📂 Principais Arquivos Modificados Recentemente

*   `class/Main.php`: Responsável pela lógica de negócios da aplicação e validação ativa de segurança das sessões.
*   `admin/cron.php`: Script inteligente que gerencia a liberação de números de pedidos não pagos e pendentes.
*   `pages/inc/footer.php`: Injeta o gatilho assíncrono que roda a limpeza do sistema em segundo plano sem impactar a velocidade do site.
*   `admin/assets/css/style.css` e `admin/home.php`: Arquivos contendo o visual premium do painel administrativo.

---

## 💻 Requisitos
*   PHP 7.4 ou superior
*   MySQL / MariaDB
*   Módulo Apache rewrite habilitado (`.htaccess`)
