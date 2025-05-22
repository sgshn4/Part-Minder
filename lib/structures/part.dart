class Part {
  final int id;
  final String name;
  final int article;
  bool isChanged;
  final int resource;
  final String image;

  Part({
    required this.id,
    required this.name,
    required this.article,
    required this.isChanged,
    required this.resource,
    required this.image
});

   Part getPartInfo() {
    return Part(id: id, name: name, article: article, isChanged: isChanged, resource: resource, image: image);
   }

   void setChanged(bool status) {
     isChanged = status;
   }
}