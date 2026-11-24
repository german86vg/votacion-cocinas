# Votación de estilos de cocina · Home Vega × OPPEIN

## Publicar (GitHub Pages) – 5 min
1. Crear repo nuevo (ej. `votacion-cocinas`), subir TODO el contenido de esta carpeta (incluida `img/`).
2. Settings > Pages > Deploy from branch > `main` / root.
3. Encuesta: `https://<usuario>.github.io/votacion-cocinas/`  ·  Resultados: `.../admin.html`

## Captura de respuestas (Supabase, gratis)
1. Crear proyecto en supabase.com. SQL Editor: pegar `supabase_setup.sql` (cambiar `CLAVE_ADMIN` por una clave propia) y ejecutar.
2. Project Settings > API: copiar URL y `anon public key` a `config.js`. Subir el cambio.
3. `admin.html`: ingresar la clave > "Cargar de Supabase". Botón "CSV largo" → pegar en hoja `Votos` del Excel de análisis.

Sin Supabase (modo local): cada persona descarga su archivo JSON al terminar; en `admin.html` cargas todos los JSON juntos.

## Notas
- Puntaje: 3 Me encanta · 2 Me gusta · 1 Neutral · 0 No me gusta. Top 3 pondera 3/2/1.
- Orden aleatorio por persona (dentro de Parte A y Parte B) para evitar sesgo de posición.
- Atajos de teclado: ← → navegar, 0–3 votar. En celular: deslizar.
