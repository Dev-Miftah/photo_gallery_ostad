class GalleryModel{
 String? galleryName;
 String? galleryTitle;
 String? galleryDescription;
 String? imagePath;

 GalleryModel({
   required this.galleryName,
   required this.galleryTitle,
   required this.galleryDescription,
   required this.imagePath});
}

List<GalleryModel> galleryData = [
 GalleryModel(
     galleryName: 'Mood',
     galleryTitle: 'Mood with nature',
     galleryDescription: 'Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings',
     imagePath: 'https://i.pinimg.com/736x/d8/8c/ee/d88cee996626048c559fb61eb7acc23e.jpg'
     ),
 GalleryModel(
     galleryName: 'Aesthetic',
     galleryTitle: 'Aesthetic vibes',
     galleryDescription: 'Vibes: An Aesthetic Journey" invites immersion in captivating visuals and evocative atmospheres, exploring the intersection of style and emotion in a curated experience of beauty and resonance',
     imagePath: 'https://images.unsplash.com/photo-1654534121691-e03f72cd5788?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
     ),
  GalleryModel(
     galleryName: 'Animals',
     galleryTitle: 'Animal Kingdom Chronicles',
     galleryDescription: 'Embark on a thrilling journey through the heart of the Animal Kingdom, where wild souls roam and tales unfold.',
     imagePath: 'https://images.unsplash.com/photo-1654026517938-b8b96654fb74?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
     ),
  GalleryModel(
     galleryName: 'City',
     galleryTitle: 'Urban Chronicles',
     galleryDescription: "Explore the vibrant pulse of the city in 'Cityscape: Urban Chronicles,' where urban life unfolds in its myriad dimensions.",
     imagePath: 'https://images.unsplash.com/photo-1654295914994-3e13ce8d7356?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
     ),
  GalleryModel(
     galleryName: 'Travel',
     galleryTitle: 'Journeys Await',
     galleryDescription: 'Embark on a journey of discovery and adventure, traversing landscapes, cultures, and experiences in this captivating exploration of travel.',
  imagePath: 'https://images.unsplash.com/photo-1638990049248-b1e28ae8cc0d?q=80&w=1588&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  ),
  GalleryModel(
     galleryName: 'Sky',
     galleryTitle: "Sky's Embrace",
     galleryDescription: 'Delve into the boundless expanse of the sky, where clouds dance and birds soar, in this mesmerizing exploration of celestial wonders.',
     imagePath: 'https://images.unsplash.com/photo-1419242902214-272b3f66ee7a?q=80&w=1813&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
     ),
  GalleryModel(
     galleryName: 'Road',
     galleryTitle: 'Journey Along the Road',
     galleryDescription: "Follow the winding roads of 'Pathfinder: Journey Along the Road' as it leads you through scenic landscapes and unexpected adventures.",
     imagePath: 'https://images.unsplash.com/photo-1654332680361-b3025a26fda9?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
     ),
  GalleryModel(
     galleryName: 'Flowers',
     galleryTitle: "A Garden's Tale",
     galleryDescription: "Experience the enchanting world of blossoms with 'Floral Whispers,' where each petal holds a story, and every bloom whispers secrets of nature.",
     imagePath: 'https://images.unsplash.com/photo-1654080258151-9272f9666fb2?q=80&w=1587&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
     ),
];