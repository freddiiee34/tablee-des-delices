FROM nginx:1.27-alpine
COPY index.html app.js table.glb lustre.glb warm_bar_1k.hdr unbounded.woff2 bricolage-grotesque.woff2 affiche.png illustration.png /usr/share/nginx/html/
EXPOSE 80
