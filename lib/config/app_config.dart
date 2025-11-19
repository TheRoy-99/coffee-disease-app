class AppConfig {
  // Paths
  static const String modelPath = 'assets/model.tflite';
  static const String labelsPath = 'assets/labels.txt';

  // Model settings
  static const int inputSize = 224;
  static const double confidenceThreshold = 0.70;

  // Classes - Enfermedades del café en Santander, Colombia
  static const List<String> diseaseClasses = [
    'Healthy',
    'Coffee Rust',
    'Cercospora Leaf Spot',
    'Leaf Miner',
  ];

  // Detailed disease information (Spanish for Santander farmers)
  static const Map<String, Map<String, String>> diseaseDetails = {
    'Healthy': {
      'name': 'Hoja Sana',
      'description': 'Hoja sin síntomas de enfermedad',
      'action': 'Mantener prácticas de manejo preventivo y nutricional',
    },
    'Coffee Rust': {
      'name': 'Roya del Café',
      'scientific': 'Hemileia vastatrix',
      'description': 'Manchas amarillas/naranjas en el envés de las hojas',
      'symptoms':
          'Pústulas pulverulentas color naranja, defoliación, pérdida de hojas',
      'impact': 'Pérdida de hasta 30-50% de producción',
      'susceptible_varieties': 'Caturra, Borbón Rosado, Papayo Ombligón',
      'resistant_varieties':
          'Castillo, Colombia, Castillo Norte, Cenicafé 1 (ZN1), MG2',
      'control':
          'Fungicidas preventivos (cobre), renovación con variedades resistentes, nutrición NPK balanceada, manejo de sombra',
      'critical_season': 'Época de lluvias (abril-mayo y octubre-noviembre)',
      'prevention':
          'Monitoreo constante, poda sanitaria, distancias de siembra adecuadas',
    },
    'Cercospora Leaf Spot': {
      'name': 'Mancha de Hierro',
      'scientific': 'Cercospora coffeicola',
      'description': 'Manchas circulares café-rojizas con halo amarillo',
      'symptoms':
          'Lesiones necróticas circulares, defoliación prematura, hojas caídas',
      'impact': 'Reducción de fotosíntesis y producción',
      'control':
          'Nutrición balanceada (especialmente nitrógeno), manejo de sombra, fungicidas a base de cobre',
      'conditions':
          'Humedad relativa alta (>80%) y temperatura elevada (24-28°C)',
      'prevention': 'Evitar exceso de sombra, fertilización adecuada',
    },
    'Leaf Miner': {
      'name': 'Minador de la Hoja',
      'scientific': 'Leucoptera coffeella',
      'description': 'Larvas que crean galerías dentro de las hojas',
      'symptoms':
          'Minas visibles en forma de serpentina, hojas deformadas, manchas plateadas',
      'impact': 'Reducción del área foliar y capacidad fotosintética',
      'control':
          'Control biológico con avispas parasitoides, manejo integrado de plagas, insecticidas selectivos',
      'prevention':
          'Conservar enemigos naturales, evitar aplicaciones innecesarias de insecticidas',
    },
  };

  // Coffee varieties cultivated in Santander
  static const List<Map<String, String>> coffeeVarieties = [
    // Variedades resistentes a roya
    {
      'name': 'Castillo',
      'resistance': 'Resistente a roya',
      'quality': 'Alta',
      'description': 'Resistencia duradera, alta productividad',
    },
    {
      'name': 'Colombia',
      'resistance': 'Resistente a roya',
      'quality': 'Alta',
      'description': 'Híbrido de Caturra x Timor, buena producción',
    },
    {
      'name': 'Castillo Norte',
      'resistance': 'Resistente a roya',
      'quality': 'Alta',
      'description': 'Adaptada específicamente a zona norte',
    },
    {
      'name': 'Cenicafé 1 (ZN1)',
      'resistance': 'Resistente a roya',
      'quality': 'Muy Alta',
      'description': 'Nueva generación, alta calidad en taza',
    },
    {
      'name': 'MG2',
      'resistance': 'Resistente a roya',
      'quality': 'Alta',
      'description': 'Mejorada genéticamente por Cenicafé',
    },
    // Variedades susceptibles pero de alta calidad
    {
      'name': 'Caturra',
      'resistance': 'Susceptible a roya',
      'quality': 'Muy Alta',
      'description': 'Tradicional, excelente calidad en taza, requiere manejo',
    },
    {
      'name': 'Borbón Rosado',
      'resistance': 'Susceptible a roya',
      'quality': 'Especial',
      'description': 'Fruto rosado, perfil de taza excepcional',
    },
    {
      'name': 'Papayo Ombligón',
      'resistance': 'Susceptible a roya',
      'quality': 'Tradicional',
      'description': 'Variedad local tradicional de Santander',
    },
    {
      'name': 'Taturhai',
      'resistance': 'Resistencia media',
      'quality': 'Alta',
      'description': 'Variedad de interés regional',
    },
  ];

  // Regional information
  static const String region = 'Santander, Colombia';
  static const String coffeeType = 'Coffea arabica';
  static const String altitudeRange = '1,200-1,800 msnm';
  static const String avgTemperature = '24°C';
  static const String productionShare = '5.21% nacional';

  // Target municipalities in Santander
  static const List<String> municipalities = [
    'Socorro',
    'San Gil',
    'Charalá',
    'Mogotes',
    'Onzaga',
    'Aratoca',
    'Encino',
    'Páramo',
  ];

  // Contact and support info
  static const String federacionContact =
      'Federación de Cafeteros - Comité Santander';
  static const String technicalSupport = 'Servicio de Extensión Rural';
}
