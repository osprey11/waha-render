# WAHA no Render

Este repositório contém configuração mínima para fazer deploy do **WAHA (WhatsApp HTTP API)** no **Render**.

## Como usar no Render

1. Crie um novo serviço no Render:
   - Tipo: *Web Service*
   - Public Git Repository: este repositório
   - Build Command: deixe em branco (Render usa Docker automaticamente)
   - Start Command: deixe em branco

2. Nas **Environment Variables** do serviço, adicione (opcional, já definido no Dockerfile):
   - `PORT=3000`
   - `WHATSAPP_DRIVER=GO`
   - `WAHA_LOG_LEVEL=info`
   - `WAHA_DASHBOARD_ENABLED=true`
   - `WAHA_DASHBOARD_USER=admin`
   - `WAHA_DASHBOARD_PASSWORD=suasenha123`

3. Clique em **Deploy**. Após o build, abra a URL pública do serviço (ex: `https://seuservico.onrender.com`) e use:
   - **Usuário:** `admin`
   - **Senha:** `suasenha123`

4. Escaneie o QR code para conectar seu WhatsApp e comece a usar a API.

## Observações

- O dashboard manterá esse usuário/senha mesmo após novos deploys.
- Para mudar usuário/senha, altere as variáveis no painel do Render e redeploy.
