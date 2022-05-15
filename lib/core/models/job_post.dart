import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/post.dart';

class JobPost extends Post {
  JobPost() : super(keyClassName);

  JobPost.clone(Map map) : this();
  @override
  clone(Map<String, dynamic> map) => JobPost.clone(map)..fromJson(map);

  static const keyClassName = 'JobPosts';
  static const keyJobId = Post.keyPostId;
  static const keyJobTitle = Post.keyPostTitle;
  static const keyJobDescription = Post.keyPostDescription;
  static const keyJobLocation = Post.keyPostLocation;
  static const keyJobHumanReadableLocation = Post.keyPostHumanReadableLocation;
  static const keyJobImage = Post.keyPostImage;
  static const keyJobCategory = Post.keyPostCategory;
  static const keyAuthor = Post.keyAuthor;
  static const keyJobCreationDate = Post.keyPostCreationDate;
  static const keyJobLastUpdatedDate = Post.keyPostLastUpdatedDate;

  static const keyJobTypes = 'jobTypes';
  static const keyJobApplications = 'applications';

  Set<JobType> get jobTypes =>
      Set<String>.from(get(keyJobTypes) ?? JobType.values.map((e) => e.name))
          .map((stringJobType) => JobType.values
              .firstWhere((jobType) => stringJobType == jobType.name))
          .toSet();

  set jobTypes(Set<JobType> jobTypes) =>
      set<List<String>>(keyJobTypes, jobTypes.map((e) => e.name).toList());

  @override
  JobPost getShallowCopy() {
    return JobPost()
      ..objectId = objectId
      ..postTitle = postTitle
      ..postDescription = postDescription
      ..postLocation = postLocation
      ..postHumanReadableLocation = postHumanReadableLocation
      ..postImage = postImage
      ..jobTypes = jobTypes
      ..postCategory = postCategory
      ..author = author
      ..set(Post.keyPostCreationDate, get<DateTime>(Post.keyPostCreationDate))
      ..set(Post.keyPostLastUpdatedDate,
          get<DateTime>(Post.keyPostLastUpdatedDate));
  }

  @override
  List<Object?> get props => [
        ...super.props,
        get(keyJobTypes),
      ];
}
