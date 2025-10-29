# Usa a imagem oficial do WAHA já compilada
FROM devlikeapro/waha:latest

# Variáveis padrão para funcionamento no Render
ENV WHATSAPP_DRIVER=GO
ENV WAHA_LOG_LEVEL=info
ENV PORT=3000

# Habilita dashboard com login
ENV WAHA_DASHBOARD_ENABLED=true
ENV WAHA_CLEAR_DATA=true
ENV WAHA_DASHBOARD_USER=admin
ENV WAHA_DASHBOARD_PASSWORD=admin

EXPOSE 3000
