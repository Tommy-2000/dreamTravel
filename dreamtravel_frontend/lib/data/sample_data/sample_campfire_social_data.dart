import 'package:dreamtravel/data/campfire_data.dart';
import 'package:dreamtravel/data/campfire_post_type.dart';
import 'package:uuid/uuid.dart';

final sampleCampfireDataList = [
  CampfireData(
    campfireId: Uuid.parse(""),
    campfireBody:
        "I had an INCREDIBLE trip in Hawaii with my brother and husband and saw dolphins by the...",
    campfirePostDate: DateTime.utc(2026, 12, 31),
    campfireUpdatedDate: DateTime.utc(2026, 12, 31),
    campfirePostImages: [
      Uri.parse(
        "https://images.unsplash.com/photo-1567416421547-5d627e718089?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=735",
      ),
    ],
    campfirePostType: CampfirePostType.tripCampfirePost,
    campfirePostFavourites: 3,
    campfirePostComments: ["", ""],
  ),
  CampfireData(
    campfireId: Uuid.parse(""),
    campfireBody:
        "I had an INCREDIBLE trip in Hawaii with my brother and husband and saw dolphins by the...",
    campfirePostDate: DateTime.utc(2026, 12, 31),
    campfireUpdatedDate: DateTime.utc(2026, 12, 31),
    campfirePostImages: [
      Uri.parse(
        "https://images.unsplash.com/photo-1567416421547-5d627e718089?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=735",
      ),
    ],
    campfirePostType: CampfirePostType.tripCampfirePost,
    campfirePostFavourites: 3,
    campfirePostComments: ["", ""],
  ),
  CampfireData(
    campfireId: Uuid.parse(""),
    campfireBody:
        "Just had a wonderful time all throughout Japan and saw some BEAUTIFUL cherry blossoms (or sakura as they are called) and...",
    campfirePostDate: DateTime.utc(2026, 12, 31),
    campfireUpdatedDate: DateTime.utc(2026, 12, 31),
    campfirePostImages: [
      Uri.parse(
        "https://images.unsplash.com/photo-1601823984263-b87b59798b70?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1524413840807-0c3cb6fa808d?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1170",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1602273660127-a0000560a4c1?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=736",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1620635063663-fce9bd4a0b1c?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1073",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1698794503338-a61fc2d1929e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=627",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1760657061857-2dc900e0719e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      ),
    ],
    campfirePostType: CampfirePostType.tripCampfirePost,
    campfirePostFavourites: 3,
    campfirePostComments: ["", ""],
  ),
  CampfireData(
    campfireId: Uuid.parse(""),
    campfireBody:
        "Just had a wonderful time all throughout Japan and saw some BEAUTIFUL cherry blossoms (or sakura as they are called) and...",
    campfirePostDate: DateTime.utc(2026, 12, 31),
    campfireUpdatedDate: DateTime.utc(2026, 12, 31),
    campfirePostImages: [
      Uri.parse(
        "https://images.unsplash.com/photo-1601823984263-b87b59798b70?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1524413840807-0c3cb6fa808d?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1170",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1602273660127-a0000560a4c1?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=736",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1620635063663-fce9bd4a0b1c?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1073",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1698794503338-a61fc2d1929e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=627",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1760657061857-2dc900e0719e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      ),
    ],
    campfirePostType: CampfirePostType.tripCampfirePost,
    campfirePostFavourites: 3,
    campfirePostComments: ["", ""],
  ),
  CampfireData(
    campfireId: Uuid.parse(""),
    campfireBody:
        "I had an INCREDIBLE trip in Hawaii with my brother and husband and saw dolphins by the...",
    campfirePostDate: DateTime.utc(2026, 12, 31),
    campfireUpdatedDate: DateTime.utc(2026, 12, 31),
    campfirePostImages: [
      Uri.parse(
        "https://images.unsplash.com/photo-1567416421547-5d627e718089?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=735",
      ),
    ],
    campfirePostType: CampfirePostType.tripCampfirePost,
    campfirePostFavourites: 3,
    campfirePostComments: ["", ""],
  ),
  CampfireData(
    campfireId: Uuid.parse(""),
    campfireBody:
        "I had an INCREDIBLE trip in Hawaii with my brother and husband and saw dolphins by the...",
    campfirePostDate: DateTime.utc(2026, 12, 31),
    campfireUpdatedDate: DateTime.utc(2026, 12, 31),
    campfirePostImages: [
      Uri.parse(
        "https://images.unsplash.com/photo-1567416421547-5d627e718089?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=735",
      ),
    ],
    campfirePostType: CampfirePostType.tripCampfirePost,
    campfirePostFavourites: 3,
    campfirePostComments: ["", ""],
  ),
  CampfireData(
    campfireId: Uuid.parse(""),
    campfireBody:
        "Just had a wonderful time all throughout Japan and saw some BEAUTIFUL cherry blossoms (or sakura as they are called) and...",
    campfirePostDate: DateTime.utc(2026, 12, 31),
    campfireUpdatedDate: DateTime.utc(2026, 12, 31),
    campfirePostImages: [
      Uri.parse(
        "https://images.unsplash.com/photo-1601823984263-b87b59798b70?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1524413840807-0c3cb6fa808d?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1170",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1602273660127-a0000560a4c1?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=736",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1620635063663-fce9bd4a0b1c?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1073",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1698794503338-a61fc2d1929e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=627",
      ),
      Uri.parse(
        "https://images.unsplash.com/photo-1760657061857-2dc900e0719e?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687",
      ),
    ],
    campfirePostType: CampfirePostType.tripCampfirePost,
    campfirePostFavourites: 3,
    campfirePostComments: ["", ""],
  ),
];
