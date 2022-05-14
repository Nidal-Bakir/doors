import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/post.dart';

class ServicePost extends Post {
  ServicePost() : super(keyClassName);

  static const keyPostId = Post.keyPostId;
  static const keyPostTitle = Post.keyPostTitle;
  static const keyPostDescription = Post.keyPostDescription;
  static const keyPostLocation = Post.keyPostLocation;
  static const keyPostHumanReadableLocation = Post.keyPostHumanReadableLocation;
  static const keyPostImage = Post.keyPostImage;
  static const keyPostCategory = Post.keyPostCategory;
  static const keyPostCreationDate = Post.keyPostCreationDate;
  static const keyPostLastUpdatedDate = Post.keyPostLastUpdatedDate;
  static const keyAuthor = Post.keyAuthor;

  static const keyClassName = 'posts';
  static const keyPostType = 'type';
  static const keyPostKeywords = 'keywords';
  static const keyPostMinCost = 'minConst';
  static const keyPostMaxCost = 'maxCost';
  static const keyPostCostCurrency = 'currency';
  static const _keyPostRateCount = 'rateCount';
  static const _keyPostRateTotal = 'rateTotal';

  ServiceType get postType =>
      ((get<String>(keyPostType) as String) == ServiceType.need.name)
          ? ServiceType.need
          : ServiceType.offer;

  set postType(ServiceType postType) => set<String>(
        keyPostType,
        postType.name == ServiceType.need.name
            ? ServiceType.need.name
            : ServiceType.offer.name,
      );

  Set<String> get postKeywords =>
      Set<String>.from(get(keyPostKeywords) ?? <String>[]);

  set postKeywords(Set<String> postKeywords) =>
      set<List<String>>(keyPostKeywords, postKeywords.toList());

  double? get minCost => double.tryParse(get<num>(keyPostMinCost).toString());

  set minCost(double? minCost) => set<double?>(keyPostMinCost, minCost);

  double? get maxCost => double.tryParse(get<num?>(keyPostMaxCost).toString());

  set maxCost(double? maxCost) => set<double?>(keyPostMaxCost, maxCost);

  String? get postCostCurrency => get<String?>(keyPostCostCurrency);

  set postCostCurrency(String? postCostCurrency) =>
      set<String?>(keyPostCostCurrency, postCostCurrency);

  String get postRate {
    final _postRateCount = double.parse(get<num>(_keyPostRateCount).toString());
    final _postRateTotal = double.parse(get<num>(_keyPostRateTotal).toString());
    if (_postRateTotal == 0.0 || _postRateCount == 0.0) {
      return '0.0';
    }
    return (_postRateTotal / _postRateCount).toStringAsFixed(1);
  }

  @override
  ServicePost getShallowCopy() {
    return ServicePost()
      ..objectId = objectId
      ..postTitle = postTitle
      ..postDescription = postDescription
      ..postLocation = postLocation
      ..postHumanReadableLocation = postHumanReadableLocation
      ..postImage = postImage
      ..postType = postType
      ..postCategory = postCategory
      ..postKeywords = postKeywords
      ..minCost = minCost
      ..maxCost = maxCost
      ..postCostCurrency = postCostCurrency
      ..author = author
      ..set(_keyPostRateCount, get<num>(_keyPostRateCount))
      ..set(_keyPostRateTotal, get<num>(_keyPostRateTotal))
      ..set(Post.keyPostCreationDate, get<DateTime>(Post.keyPostCreationDate))
      ..set(Post.keyPostLastUpdatedDate,
          get<DateTime>(Post.keyPostLastUpdatedDate));
  }

  @override
  List<Object?> get props => [
        ...super.props,
        get<String>(keyPostType),
        get(keyPostKeywords),
        get<num>(keyPostMinCost),
        get<num?>(keyPostMaxCost),
        get<String?>(keyPostCostCurrency),
        get<num>(_keyPostRateCount),
        get<num>(_keyPostRateTotal),
      ];
}
