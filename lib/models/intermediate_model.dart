class IntermediateCategoryModel {
  String? name;
  String? image;

  IntermediateCategoryModel(this.name, this.image);
}

List<IntermediateCategoryModel> intermediate = intermediateCategoryData
    .map(
      (item) => IntermediateCategoryModel(
        item['name'],
        item['image'],
      ),
    )
    .toList();

var intermediateCategoryData = [
  {
    'name': 'Functions',
    'image': 'assets/images/Functions_PYTHON.png',
  },
  {
    'name': 'Keywords',
    'image': 'assets/images/Keyword_PYTHON.png',
  },
  {
    'name': 'Lists',
    'image': 'assets/images/Lists_PYTHON.png',
  },
  {
    'name': 'Loops',
    'image': 'assets/images/loops_python.png',
  },
  {
    'name': 'Dictionaries',
    'image': 'assets/images/Dictionaries_PYTHON.png',
  },
  {
    'name': 'Strings',
    'image': 'assets/images/Strings_PYTHON.png',
  }
];
