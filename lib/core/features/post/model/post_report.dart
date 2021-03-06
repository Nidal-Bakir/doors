import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class PostReport extends ParseObject
    with EquatableMixin
    implements ParseCloneable {
  PostReport() : super.clone(keyClassName);
  PostReport.clone(Map map) : this();
  @override
  clone(Map<String, dynamic> map) => PostReport.clone(map)..fromJson(map);
  static const keyClassName = 'reports';
  static const keyReportId = keyVarObjectId;

  static const keyReportType = 'reportType';
  static const keyReportMoreInfo = 'reportMoreInfo';
  static const keyReportAuthor = 'reportAuthor';
  static const keyReportedServicePost = 'reportedServicePost';

  String get reportId => get<String>(keyReportId) as String;

  set reportType(PostReportType reportType) =>
      set<String>(keyReportType, reportType.name);

  set reportMoreInfo(String? moreInfo) =>
      set<String?>(keyReportMoreInfo, moreInfo);

  set reportAuthor(User reportAuthor) =>
      set<User>(keyReportAuthor, reportAuthor);

  set reportedServicePost(ServicePost reportedServicePost) =>
      set<ServicePost>(keyReportedServicePost, reportedServicePost);

  @override
  List<Object?> get props => [
        get<String?>(keyVarObjectId),
        get<User>(keyReportAuthor),
        get<ServicePost>(keyReportedServicePost)
      ];
}
