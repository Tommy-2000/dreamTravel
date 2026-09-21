

enum CampfirePostType {
  tripCampfirePost,
  adventureCampfirePost,
}

extension FilteredCampfirePostType on CampfirePostType {
  String get tripCampfirePostTypeName => CampfirePostType.tripCampfirePost.name;
  String get adventureCampfirePostTypeName => CampfirePostType.adventureCampfirePost.name;
}
