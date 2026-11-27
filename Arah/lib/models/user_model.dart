class UserModel {
  final String id;
  final String name;
  final String email;
  final String role; // "Buyer", "Seller", "Both"
  final String currentMode; // "Buyer" or "Seller"
  final String bio;
  final String experienceLevel;
  final List<String> skills;
  final String? photoUrl;
  final String githubUrl;
  final String linkedinUrl;
  final bool isProfilePublic;
  //newly added field
  final String sellercategory;
  final int trustScore;
  final int completedshortTermTasks;
  final List<String> uniqueBuyerIds;
  final int positiveReviewCount;
  final bool isLongtermEligible;
  final String verificationStatus;
  final String AccountStatus;
  final DateTime? suspensionEndDate;
  final List<String> positiveReviewcbuyerids; // List to store IDs of positive reviews buyers
  final bool islongtermpaused;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    this.currentMode = 'Buyer',
    this.bio = '',
    this.experienceLevel = 'Beginner',
    this.skills = const [],
    this.photoUrl,
    this.githubUrl = '',
    this.linkedinUrl = '',
    this.isProfilePublic = true,
    //Default values for newly added fields
    this.sellercategory = '',
    this.trustScore = 50,
    this.completedshortTermTasks = 0,
    this.uniqueBuyerIds = const [],
    this.positiveReviewCount = 0,
    this.isLongtermEligible = false,
    this.verificationStatus = 'Not Verified',
    this.AccountStatus = 'Active',
    this.suspensionEndDate,
    this.positiveReviewcbuyerids = const [],
    this.islongtermpaused = false,
  });

  factory UserModel.fromMap(Map<String, dynamic> map, String id) {
    return UserModel(
      id: id,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      role: map['role'] ?? 'Buyer',
      currentMode: map['currentMode'] ?? map['role'] ?? 'Buyer',
      bio: map['bio'] ?? '',
      experienceLevel: map['experienceLevel'] ?? 'Beginner',
      skills: List<String>.from(map['skills'] ?? []),
      photoUrl: map['photoUrl'],
      githubUrl: map['githubUrl'] ?? '',
      linkedinUrl: map['linkedinUrl'] ?? '',
      isProfilePublic: map['isProfilePublic'] ?? true,
      // Newly added fields
      sellercategory: map['sellercategory'] ?? 'short_term',
      trustScore: map['trustScore'] ?? 50,
      completedshortTermTasks: map['completedshortTermTasks'] ?? 0,
      uniqueBuyerIds: List<String>.from(map['uniqueBuyerIds'] ?? []),
      positiveReviewCount: map['positiveReviewCount'] ?? 0,
      isLongtermEligible: map['isLongtermEligible'] ?? false,
      verificationStatus: map['verificationStatus'] ?? 'Not Verified',
      AccountStatus: map['AccountStatus'] ?? 'Active',
      suspensionEndDate: map['suspensionEndDate'] != null ? DateTime.parse(map['suspensionEndDate']) : null,
      positiveReviewcbuyerids: List<String>.from(map['positiveReviewcbuyerids'] ?? []),
      islongtermpaused: map['islongtermpaused'] ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'role': role,
      'currentMode': currentMode,
      'bio': bio,
      'experienceLevel': experienceLevel,
      'skills': skills,
      'photoUrl': photoUrl,
      'githubUrl': githubUrl,
      'linkedinUrl': linkedinUrl,
      'isProfilePublic': isProfilePublic,
      // Newly added fields
      'sellercategory': sellercategory,
      'trustScore': trustScore,
      'completedshortTermTasks': completedshortTermTasks,
      'uniqueBuyerIds': uniqueBuyerIds,
      'positiveReviewCount': positiveReviewCount,
      'isLongtermEligible': isLongtermEligible,
      'verificationStatus': verificationStatus,
      'AccountStatus': AccountStatus,
      'suspensionEndDate': suspensionEndDate?.toIso8601String(),
      'positiveReviewcbuyerids': positiveReviewcbuyerids,
      'islongtermpaused': islongtermpaused,
    };
  }

  UserModel copyWith({
    String? name,
    String? bio,
    String? experienceLevel,
    List<String>? skills,
    String? photoUrl,
    String? githubUrl,
    String? linkedinUrl,
    String? currentMode,
    bool? isProfilePublic,
    String? sellercategory,
    int? trustScore,
    int? completedshortTermTasks,
    List<String>? uniqueBuyerIds,
    int? positiveReviewCount,
    bool? isLongtermEligible,
    String? verificationStatus,
    String? AccountStatus,
    DateTime? suspensionEndDate,
  }) {
    return UserModel(
      id: id,
      email: email,
      role: role,
      name: name ?? this.name,
      bio: bio ?? this.bio,
      experienceLevel: experienceLevel ?? this.experienceLevel,
      skills: skills ?? this.skills,
      photoUrl: photoUrl ?? this.photoUrl,
      githubUrl: githubUrl ?? this.githubUrl,
      linkedinUrl: linkedinUrl ?? this.linkedinUrl,
      currentMode: currentMode ?? this.currentMode,
      isProfilePublic: isProfilePublic ?? this.isProfilePublic,
      sellercategory: sellercategory ?? this.sellercategory,
      trustScore: trustScore ?? this.trustScore,
      completedshortTermTasks: completedshortTermTasks ?? this.completedshortTermTasks,
      uniqueBuyerIds: uniqueBuyerIds ?? this.uniqueBuyerIds,
      positiveReviewCount: positiveReviewCount ?? this.positiveReviewCount,
      isLongtermEligible: isLongtermEligible ?? this.isLongtermEligible,
      verificationStatus: verificationStatus ?? this.verificationStatus,
      AccountStatus: AccountStatus ?? this.AccountStatus,
      suspensionEndDate: suspensionEndDate ?? this.suspensionEndDate,
    );
  }
}
