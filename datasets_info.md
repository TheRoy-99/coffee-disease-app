# Datasets

## RoCoLe (Robusta Coffee Leaf Images Dataset)

### Información general
- **Total imágenes:** 1,560
- **Clases:** 3
  - Healthy (sanas)
  - Coffee Rust (roya del café)
  - Red Spider Mite (ácaros)
- **Formato:** JPG/PNG
- **Fuente:** https://www.kaggle.com/datasets/bhuteujwal/rocole-a-robusta-coffee-leaf-images-dataset

### Estructura esperada
\`\`\`
datasets/rocole/
├── healthy/
├── rust/
└── miner/
\`\`\`

### Descarga
1. Crear cuenta en Kaggle
2. Descargar dataset RoCoLe
3. Extraer en `~/datasets/rocole/` o carpeta equivalente

### Uso en entrenamiento
Ver notebook: `notebooks/train_model.ipynb`
# Dataset para Café de Santander, Colombia

## Región objetivo
- **Departamento:** Santander
- **Municipios cafeteros:** Socorro, San Gil, Charalá, Mogotes, Onzaga, Aratoca, etc.
- **Tipo de café:** 100% Coffea arabica
- **Altitud:** 1,200-1,800 metros sobre el nivel del mar
- **Clima:** Tropical de montaña, temperatura promedio 24°C
- **Participación:** 5.21% de la producción colombiana (37,000 fincas)

## Variedades cultivadas en Santander

### Variedades resistentes a roya
1. **Variedad Colombia** - Híbrido resistente, productividad alta
2. **Castillo** - Resistencia duradera a roya, buena calidad
3. **Castillo Norte** - Adaptada a zona norte cafetera
4. **Cenicafé 1 (ZN1)** - Nueva generación resistente
5. **Cenicafé MG2** - Mejorada genéticamente

### Variedades tradicionales (susceptibles)
6. **Caturra** - Alta calidad taza, susceptible a roya, requiere manejo
7. **Borbón Rosado** - Especial, fruto rosado, alta taza
8. **Papayo Ombligón** - Variedad tradicional local

### Variedades especiales
9. **Taturhai** - Variedad de interés regional

## Enfermedades prioritarias por variedad

### ROYA DEL CAFÉ (Hemileia vastatrix) ⚠️ CRÍTICA
- **Variedades resistentes:** Colombia, Castillo, Castillo Norte, ZN1, MG2
- **Variedades susceptibles:** Caturra, Borbón Rosado, Papayo Ombligón
- **Síntomas:** Manchas amarillo-naranja en envés de hojas
- **Impacto:** 30-50% pérdida en variedades susceptibles
- **Época crítica:** Temporada de lluvias
- **Control:** 
  - Renovación con variedades resistentes (Castillo, Colombia)
  - Fungicidas preventivos para Caturra
  - Densidad adecuada de siembra
  - Nutrición balanceada (NPK + microelementos)

### MANCHA DE HIERRO (Cercospora coffeicola)
- **Afecta:** Todas las variedades
- **Síntomas:** Manchas circulares café-rojizas con halo amarillo
- **Condiciones:** Humedad alta + temperatura elevada
- **Impacto:** Defoliación prematura, reducción fotosíntesis
- **Control:** Nutrición adecuada, manejo sombra

### MINADOR DE LA HOJA (Leucoptera coffeella)
- **Afecta:** Todas las variedades
- **Síntomas:** Galerías/minas en superficie de hojas
- **Impacto:** Reducción área foliar y fotosíntesis
- **Control:** Manejo integrado, enemigos naturales

## Dataset: BRACOL (Brazilian Arabica Coffee Leaf)

### Por qué es válido para Santander
✅ Mismo tipo: Coffea arabica  
✅ Mismas enfermedades principales  
✅ Clima tropical similar  
✅ Variedades comparables (Mundo Novo, Catuaí → similares a Colombia, Castillo)  

### Especificaciones
- **Total imágenes:** 1,747
- **Formato:** JPG alta resolución
- **Captura:** Campo real, múltiples condiciones

### Clases (4 principales)
1. **healthy** - Hojas sanas (~450 img)
2. **rust** - Roya del café (~450 img)
3. **cercospora** - Mancha de hierro (~400 img)
4. **miner** - Minador de la hoja (~400 img)

### Descarga
- **Mendeley:** https://data.mendeley.com/datasets/yy2k5y8mxg/1
- **Kaggle:** https://www.kaggle.com/datasets/alvarole/coffee-leaves-disease
- **Tamaño:** ~1 GB

### Estructura local

## Validación del modelo en campo (Santander)

### Fase 1: Validación en fincas piloto
- [ ] Municipio: Socorro (variedad Colombia, Castillo)
- [ ] Municipio: San Gil (variedad Caturra, Borbón Rosado)
- [ ] Municipio: Charalá (variedad Castillo Norte)
- [ ] Altitudes: 1,200m, 1,500m, 1,800m
- [ ] Condiciones: Sol directo, nublado, sombra

### Fase 2: Pruebas por variedad
- [ ] Castillo - Estado vegetativo y producción
- [ ] Colombia - Hojas jóvenes y maduras
- [ ] Caturra - Con y sin síntomas de roya
- [ ] Borbón Rosado - Detección temprana
- [ ] ZN1 - Validar resistencia a roya

### Fase 3: Estados de enfermedad
- [ ] Roya: Inicial (pocas pústulas) → Avanzada (defoliación)
- [ ] Cercospora: Manchas tempranas → Lesiones necróticas
- [ ] Minador: Minas activas → Daño severo

## Aplicabilidad regional

### Municipios cafeteros objetivo (Santander)
1. Socorro - Mayor producción
2. San Gil - Cafés especiales
3. Charalá - Tradición cafetera
4. Mogotes - Altitud media
5. Onzaga - Zona alta
6. Aratoca - Microclimas
7. Encino - Producción familiar
8. Páramo - Altitud extrema

## Referencias técnicas
- Federación Nacional de Cafeteros - Comité Santander
- ICA - Instituto Colombiano Agropecuario
- Cenicafé - Centro Nacional de Investigaciones de Café
- Guía de variedades de café - FNC 2025
