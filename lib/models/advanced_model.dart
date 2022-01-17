class AdvancedCategoryModel {
  String? name;
  String? image;

  AdvancedCategoryModel(this.name, this.image);
}

List<AdvancedCategoryModel> advanced = advancedCategoryData
    .map(
      (item) => AdvancedCategoryModel(
        item['name'],
        item['image'],
      ),
    )
    .toList();

var advancedCategoryData = [
  {
    'name': 'Objects',
    'image': 'assets/images/Object_PYTHON.png',
  },
  {
    'name': 'Sorting',
    'image': 'assets/images/Sorting_PYTHON.png',
  },
  {
    'name': 'Error and Exception handling',
    'image': 'assets/images/Error_PYTHON.png',
  },
];
