# La Tablée des Délices

Page de présentation du concept de soirées « La Tablée des Délices » : on invite, on mélange, on trinque.

## Contenu

- `index.html` : la page (HTML, CSS et animations au scroll)
- `app.js` : la scène 3D, compilée avec Three.js r160 (licence MIT)
- `table.glb`, `lustre.glb` : table ronde et lustre (glTF binaire, textures 1K)
- `warm_bar_1k.hdr` : éclairage « Warm Bar » (HDR 1K)
- `archivo.woff2`, `bricolage-grotesque.woff2` : polices Archivo et Bricolage Grotesque (licence OFL), servies en local
- `affiche.png`, `illustration.png` : visuels de la galerie
- `Dockerfile` : image nginx qui sert le site en statique

## Crédits

Modèles 3D et HDRI : [Poly Haven](https://polyhaven.com), licence CC0.

- Round Wooden Table 01
- Chandelier 02
- Warm Bar (HDRI)

## Lancer en local

La page charge des modules et des modèles 3D : il faut la servir par HTTP, pas l'ouvrir en double-cliquant.

```bash
python3 -m http.server 8080
```

Puis ouvrir http://localhost:8080.

Avec Docker :

```bash
docker build -t tablee .
docker run -p 8080:80 tablee
```

## Déploiement

Déployée avec Coolify (build pack Dockerfile, port 80) sur `tablee.simondelrue.fr`.

## À compléter

- Heure de début des soirées (`[HEURE]`)
- Lien d'inscription du bouton « Je réserve ma place »
- Deux photos de soirée dans la galerie
