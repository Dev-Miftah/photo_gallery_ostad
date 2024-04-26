class SuggestionModel{
  String? galleryName;
  String? galleryTitle;
  String? galleryDescription;
  String? imagePath;

  SuggestionModel({
    required this.galleryName,
    required this.galleryTitle,
    required this.galleryDescription,
    required this.imagePath});
}

List<SuggestionModel> suggestionData = [
  SuggestionModel(
      galleryName: 'Dawn',
      galleryTitle: 'Breaking Light',
      galleryDescription: 'A sunset over a body of water with a mountain in the background',
      imagePath: 'https://images.unsplash.com/photo-1654027277479-a481adfdfcd9?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ),
  SuggestionModel(
      galleryName: 'Leaves',
      galleryTitle: 'Golden Canopy: Leaves in the Spotlight',
      galleryDescription: "Amidst the rustling of green leaves, secrets are whispered on the breeze, where nature's symphony orchestrates tales of growth, life, and the quiet beauty of the forest",
      imagePath: 'https://images.unsplash.com/photo-1497250681960-ef046c08a56e?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ),
];