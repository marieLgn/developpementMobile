// ignore_for_file: constant_identifier_names
class Product {
  final String barcode;
  final String? name;
  final String? altName;
  final String? picture;
  final String? quantity;
  final List<String>? brands;
  final List<String>? manufacturingCountries;
  final ProductNutriScore? nutriScore;
  final ProductNutriScoreLevels? nutriScoreLevels;
  final ProductNovaScore? novaScore;
  final ProductGreenScore? greenScore;
  final List<String>? ingredients;

  // Eg: "Sucre, <span class=\"allergen\">gluten de blé</span>"
  final String? ingredientsWithAllergens;
  final List<String>? traces;
  final List<String>? allergens;
  final Map<String, String>? additives;
  final NutrientLevels? nutrientLevels;
  final NutritionFacts? nutritionFacts;
  final bool? ingredientsFromPalmOil;
  final ProductAnalysis? containsPalmOil;
  final ProductAnalysis? isVegan;
  final ProductAnalysis? isVegetarian;

  Product({
    required this.barcode,
    this.name,
    this.altName,
    this.picture,
    this.quantity,
    this.brands,
    this.manufacturingCountries,
    this.nutriScore,
    this.nutriScoreLevels,
    this.novaScore,
    this.greenScore,
    this.ingredients,
    this.ingredientsWithAllergens,
    this.traces,
    this.allergens,
    this.additives,
    this.nutrientLevels,
    this.nutritionFacts,
    this.ingredientsFromPalmOil,
    this.containsPalmOil,
    this.isVegan,
    this.isVegetarian,
  });
}

class GetProductResponse {
  final ProductItem response;

  GetProductResponse({required this.response});

  factory GetProductResponse.fromJSON(Map<String, dynamic> json) {
    if (json['response'] == null) {
      throw Exception('Invalid JSON: missing response key');
    }
    return GetProductResponse(response: ProductItem.fromJSON(json['response']));
  }
}

class ProductItem {
  final String barcode;
  final String? name;
  final String? altName;
  final Map<String, dynamic>? pictures;
  final String? quantity;
  final List<dynamic>? brands;
  final List<dynamic>? manufacturingCountries;
  final String? nutriScore;
  final int? novaScore;
  final String? ecoScoreGrade;
  final Map<String, dynamic>? ingredients;
  final Map<String, dynamic>? traces;
  final Map<String, dynamic>? allergens;
  final Map<String, dynamic>? additives;
  final Map<String, dynamic>? nutrientLevels;
  final Map<String, dynamic>? nutritionFacts;
  final Map<String, dynamic>? analysis;
  final Map<String, dynamic>? levels;

  ProductItem.fromJSON(Map<String, dynamic> json)
    : barcode = json['barcode'] as String? ?? '',
      name = json['name'] as String?,
      altName = json['altName'] as String?,
      pictures = json['pictures'] as Map<String, dynamic>?,
      quantity = json['quantity'] as String?,
      brands = json['brands'] as List<dynamic>?,
      manufacturingCountries = json['manufacturingCountries'] as List<dynamic>?,
      nutriScore = json['nutriScore'] as String?,
      novaScore = json['novaScore'] as int?,
      ecoScoreGrade = json['ecoScoreGrade'] as String?,
      ingredients = json['ingredients'] as Map<String, dynamic>?,
      traces = json['traces'] as Map<String, dynamic>?,
      allergens = json['allergens'] as Map<String, dynamic>?,
      additives = json['additives'] as Map<String, dynamic>?,
      nutrientLevels = json['nutrientLevels'] as Map<String, dynamic>?,
      nutritionFacts = json['nutritionFacts'] as Map<String, dynamic>?,
      analysis = json['analysis'] as Map<String, dynamic>?,
      levels = json['levels'] as Map<String, dynamic>?;

  Product toProduct() {
    return Product(
      barcode: barcode,
      name: name,
      altName: altName,
      picture: pictures?['product'] as String?,
      quantity: quantity,
      brands: brands?.cast<String>(),
      manufacturingCountries: manufacturingCountries?.cast<String>(),
      nutriScore: ProductNutriScore.fromString(nutriScore),
      novaScore: ProductNovaScore.fromInt(novaScore),
      greenScore: ProductGreenScore.fromString(ecoScoreGrade),
      ingredients: (ingredients?['list'] as List<dynamic>?)?.cast<String>(),
      ingredientsWithAllergens: ingredients?['withAllergens'] as String?,
      traces: (traces?['list'] as List<dynamic>?)?.cast<String>(),
      allergens: (allergens?['list'] as List<dynamic>?)?.cast<String>(),
      additives: additives?.map(
        (key, value) => MapEntry(key, value.toString()),
      ),
      nutrientLevels: nutrientLevels != null
          ? NutrientLevels.fromJSON(nutrientLevels!)
          : null,
      nutritionFacts: nutritionFacts != null
          ? NutritionFacts.fromJSON(nutritionFacts!)
          : null,
      ingredientsFromPalmOil: ingredients?['containsPalmOil'] as bool?,
      containsPalmOil: ProductAnalysis.fromString(analysis?['palmOil']),
      isVegan: ProductAnalysis.fromString(analysis?['vegan']),
      isVegetarian: ProductAnalysis.fromString(analysis?['vegetarian']),
      nutriScoreLevels: levels != null
          ? ProductNutriScoreLevels.fromJSON(levels!)
          : null,
    );
  }
}

class NutritionFacts {
  final String servingSize;
  final Nutriment? calories;
  final Nutriment? fat;
  final Nutriment? saturatedFat;
  final Nutriment? carbohydrate;
  final Nutriment? sugar;
  final Nutriment? fiber;
  final Nutriment? proteins;
  final Nutriment? sodium;
  final Nutriment? salt;
  final Nutriment? energy;

  NutritionFacts({
    required this.servingSize,
    this.calories,
    this.fat,
    this.saturatedFat,
    this.carbohydrate,
    this.sugar,
    this.fiber,
    this.proteins,
    this.sodium,
    this.salt,
    this.energy,
  });

  factory NutritionFacts.fromJSON(Map<String, dynamic> json) {
    return NutritionFacts(
      servingSize: json['servingSize'] as String? ?? '',
      calories: json['calories'] != null
          ? Nutriment.fromJSON(json['calories'])
          : null,
      fat: json['fat'] != null ? Nutriment.fromJSON(json['fat']) : null,
      saturatedFat: json['saturatedFat'] != null
          ? Nutriment.fromJSON(json['saturatedFat'])
          : null,
      carbohydrate: json['carbohydrate'] != null
          ? Nutriment.fromJSON(json['carbohydrate'])
          : null,
      sugar: json['sugar'] != null ? Nutriment.fromJSON(json['sugar']) : null,
      fiber: json['fiber'] != null ? Nutriment.fromJSON(json['fiber']) : null,
      proteins: json['proteins'] != null
          ? Nutriment.fromJSON(json['proteins'])
          : null,
      sodium: json['sodium'] != null
          ? Nutriment.fromJSON(json['sodium'])
          : null,
      salt: json['salt'] != null ? Nutriment.fromJSON(json['salt']) : null,
      energy: json['energy'] != null
          ? Nutriment.fromJSON(json['energy'])
          : null,
    );
  }
}

class Nutriment {
  final String unit;
  final dynamic perServing;
  final dynamic per100g;

  Nutriment({required this.unit, this.perServing, this.per100g});

  factory Nutriment.fromJSON(Map<String, dynamic> json) {
    return Nutriment(
      unit: json['unit'] as String? ?? '',
      perServing: json['perServing'],
      per100g: json['per100g'],
    );
  }
}

class NutrientLevels {
  final String? salt;
  final String? saturatedFat;
  final String? sugars;
  final String? fat;

  NutrientLevels({this.salt, this.saturatedFat, this.sugars, this.fat});

  factory NutrientLevels.fromJSON(Map<String, dynamic> json) {
    return NutrientLevels(
      salt: json['salt']?['level'] as String?,
      saturatedFat: json['saturatedFat']?['level'] as String?,
      sugars: json['sugars']?['level'] as String?,
      fat: json['fat']?['level'] as String?,
    );
  }
}

class ProductNutriScoreLevels {
  final ProductNutriScoreLevel? energy;
  final ProductNutriScoreLevel? fiber;
  final ProductNutriScoreLevel? fruitsVegetablesLegumes;
  final ProductNutriScoreLevel? proteins;
  final ProductNutriScoreLevel? salt;
  final ProductNutriScoreLevel? saturatedFat;
  final ProductNutriScoreLevel? sugars;

  ProductNutriScoreLevels({
    required this.energy,
    required this.fiber,
    required this.fruitsVegetablesLegumes,
    required this.proteins,
    required this.salt,
    required this.saturatedFat,
    required this.sugars,
  });

  factory ProductNutriScoreLevels.fromJSON(Map<String, dynamic> json) {
    return ProductNutriScoreLevels(
      energy: json['energy'] != null
          ? ProductNutriScoreLevel.fromJSON(json['energy'])
          : null,
      fiber: json['fiber'] != null
          ? ProductNutriScoreLevel.fromJSON(json['fiber'])
          : null,
      fruitsVegetablesLegumes: json['fruitsVegetablesLegumes'] != null
          ? ProductNutriScoreLevel.fromJSON(json['fruitsVegetablesLegumes'])
          : null,
      proteins: json['proteins'] != null
          ? ProductNutriScoreLevel.fromJSON(json['proteins'])
          : null,
      salt: json['salt'] != null
          ? ProductNutriScoreLevel.fromJSON(json['salt'])
          : null,
      saturatedFat: json['saturatedFat'] != null
          ? ProductNutriScoreLevel.fromJSON(json['saturatedFat'])
          : null,
      sugars: json['sugars'] != null
          ? ProductNutriScoreLevel.fromJSON(json['sugars'])
          : null,
    );
  }
}

class ProductNutriScoreLevel {
  final double points;
  final double maxPoints;
  final String unit;
  final double? value;
  final ProductNutriScoreLevelType type;

  ProductNutriScoreLevel({
    required this.points,
    required this.maxPoints,
    required this.unit,
    required this.value,
    required this.type,
  });

  factory ProductNutriScoreLevel.fromJSON(Map<String, dynamic> json) {
    return ProductNutriScoreLevel(
      points: (json['points'] as num).toDouble(),
      maxPoints: (json['maxPoints'] as num).toDouble(),
      unit: json['unit'] as String? ?? '',
      value: (json['value'] as num?)?.toDouble(),
      type: ProductNutriScoreLevelType.fromString(json['type'] as String?),
    );
  }
}

enum ProductNutriScoreLevelType {
  positive,
  negative,
  unknown;

  static ProductNutriScoreLevelType fromString(String? val) {
    return switch (val) {
      'positive' => ProductNutriScoreLevelType.positive,
      'negative' => ProductNutriScoreLevelType.negative,
      _ => ProductNutriScoreLevelType.unknown,
    };
  }
}

enum ProductNutriScore {
  A,
  B,
  C,
  D,
  E,
  unknown;

  static ProductNutriScore fromString(String? val) {
    return switch (val?.toUpperCase()) {
      'A' => ProductNutriScore.A,
      'B' => ProductNutriScore.B,
      'C' => ProductNutriScore.C,
      'D' => ProductNutriScore.D,
      'E' => ProductNutriScore.E,
      _ => ProductNutriScore.unknown,
    };
  }
}

enum ProductNovaScore {
  group1,
  group2,
  group3,
  group4,
  unknown;

  static ProductNovaScore fromInt(int? val) {
    return switch (val) {
      1 => ProductNovaScore.group1,
      2 => ProductNovaScore.group2,
      3 => ProductNovaScore.group3,
      4 => ProductNovaScore.group4,
      _ => ProductNovaScore.unknown,
    };
  }
}

enum ProductGreenScore {
  A,
  APlus,
  B,
  C,
  D,
  E,
  F,
  unknown;

  static ProductGreenScore fromString(String? val) {
    return switch (val?.toUpperCase()) {
      'A' => ProductGreenScore.A,
      'A+' => ProductGreenScore.APlus,
      'B' => ProductGreenScore.B,
      'C' => ProductGreenScore.C,
      'D' => ProductGreenScore.D,
      'E' => ProductGreenScore.E,
      'F' => ProductGreenScore.F,
      _ => ProductGreenScore.unknown,
    };
  }
}

enum ProductAnalysis {
  yes,
  no,
  maybe;

  static ProductAnalysis fromString(String? analysis) {
    return switch (analysis) {
      'yes' => ProductAnalysis.yes,
      'no' => ProductAnalysis.no,
      'maybe' => ProductAnalysis.maybe,
      _ => ProductAnalysis.maybe,
    };
  }
}

Product generateProduct() => Product(
  barcode: '1234567890',
  name: 'Nutella',
  altName: 'Product Alt Name',
  picture:
      'https://images.openfoodfacts.org/images/products/301/762/042/5035/front_fr.533.400.jpg',
  quantity: '200g',
  brands: ['Ferrero', 'Ferrero'],
  manufacturingCountries: ['France', 'Italie'],
  nutriScore: ProductNutriScore.E,
  novaScore: ProductNovaScore.group4,
  greenScore: ProductGreenScore.D,
  ingredients: [
    'Sucre',
    'sirop de glucose',
    '_lait_ écrémé',
    'crème légère (_lait_)',
    'eau',
    'beurre de cacao',
    'matière grasse de noix de coco',
    '_lait_ écrémé concentré sucré',
    'pâte de cacao',
    'farine de _blé_',
    'matière grasse de palme',
    '_lait_ écrémé en poudre',
    '_lactose_',
    'matière grasse du _lait_',
    'huile de palmiste',
    'petit-_lait_ en poudre',
    'cacao maigre',
    'beurre (_lait_)',
    'émulsifiants (lécithine de _soja_, E471, tristéarate de sorbitane)',
    '_lait_ entier en poudre',
    'stabilisants (E407, E410, E412)',
    'arômes naturels (_lait_)',
    'sel',
    'colorant naturel (caramel ordinaire)',
    'cacao en poudre',
    'poudre à lever (E503)',
    'extrait naturel de vanille',
  ],
  ingredientsWithAllergens:
      'Sucre, sirop de glucose, <span class="allergen">lait</span> écrémé, crème légère (<span class="allergen">lait</span>), eau, beurre de cacao, matière grasse de noix de coco, <span class="allergen">lait</span> écrémé concentré sucré, pâte de cacao, farine de <span class="allergen">blé</span>, matière grasse de palme, <span class="allergen">lait</span> écrémé en poudre, <span class="allergen">lactose</span>, matière grasse du <span class="allergen">lait</span>, huile de palmiste, petit-<span class="allergen">lait</span> en poudre, cacao maigre, <span class="allergen">beurre</span> (<span class="allergen">lait</span>), émulsifiants (lécithine de <span class="allergen">soja</span>, E471, tristéarate de sorbitane), <span class="allergen">lait</span> entier en poudre, stabilisants (E407, E410, E412), arômes naturels (<span class="allergen">lait</span>), sel, colorant naturel (caramel ordinaire), cacao en poudre, poudre à lever (E503), extrait naturel de vanille. (Peut contenir<span class="allergen">: cacahuète</span>, <span class="allergen">noisette</span>, <span class="allergen">amande</span>).',
  traces: ['cacahuète', 'noisette', 'amande'],
  allergens: ['lait', 'soja', 'beurre'],
  additives: {'e322i': 'Description', 'e471': 'Description'},
  nutriScoreLevels: ProductNutriScoreLevels(
    energy: ProductNutriScoreLevel(
      points: 3,
      maxPoints: 10,
      unit: 'kJ',
      value: 1180,
      type: ProductNutriScoreLevelType.negative,
    ),
    saturatedFat: ProductNutriScoreLevel(
      points: 9,
      maxPoints: 10,
      unit: 'g',
      value: 9.05,
      type: ProductNutriScoreLevelType.negative,
    ),
    sugars: ProductNutriScoreLevel(
      points: 7,
      maxPoints: 15,
      unit: 'g',
      value: 25.5,
      type: ProductNutriScoreLevelType.negative,
    ),
    proteins: ProductNutriScoreLevel(
      points: 1,
      maxPoints: 7,
      unit: 'g',
      value: 3.5,
      type: ProductNutriScoreLevelType.positive,
    ),
    fiber: ProductNutriScoreLevel(
      points: 0,
      maxPoints: 5,
      unit: 'g',
      value: 0,
      type: ProductNutriScoreLevelType.unknown,
    ),
    salt: ProductNutriScoreLevel(
      points: 1,
      maxPoints: 20,
      unit: 'g',
      value: 0,
      type: ProductNutriScoreLevelType.positive,
    ),
    fruitsVegetablesLegumes: ProductNutriScoreLevel(
      points: 0,
      maxPoints: 5,
      unit: '%',
      value: 0,
      type: ProductNutriScoreLevelType.positive,
    ),
  ),
  nutrientLevels: NutrientLevels(
    salt: 'Low',
    saturatedFat: 'Low',
    sugars: 'Low',
    fat: 'Low',
  ),
  nutritionFacts: NutritionFacts(
    servingSize: '100g',
    calories: Nutriment(unit: 'kcal', perServing: 100, per100g: 100),
    fat: Nutriment(unit: 'g', perServing: 10, per100g: 10),
    saturatedFat: Nutriment(unit: 'g', perServing: 5, per100g: 5),
    carbohydrate: Nutriment(unit: 'g', perServing: 20, per100g: 20),
    sugar: Nutriment(unit: 'g', perServing: 10, per100g: 10),
    fiber: Nutriment(unit: 'g', perServing: 5, per100g: 5),
    proteins: Nutriment(unit: 'g', perServing: 10, per100g: 10),
    sodium: Nutriment(unit: 'mg', perServing: 100, per100g: 100),
    salt: Nutriment(unit: 'g', perServing: 0.1, per100g: 0.1),
  ),
);
