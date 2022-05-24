import 'package:doors/core/models/cloneable.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class JobApplication extends ParseObject
    with EquatableMixin
    implements ParseCloneable, Cloneable {
  JobApplication() : super.clone(keyClassName);

  JobApplication.clone(Map map) : this();

  @override
  clone(Map<String, dynamic> map) => JobApplication.clone(map)..fromJson(map);

  static const keyClassName = 'JopApplications';
  static const keyApplicationId = keyVarObjectId;
  static const keyCVFile = 'cvFile';
  static const keyJob = 'job';
  static const keyCVFileSize = 'fileSize';
  static const keyAuthor = 'author';
  static const keyApplicationCreationDate = keyVarCreatedAt;

  String get applicationId => get<String>(keyApplicationId) as String;

  ParseFile get cvFile => get<ParseFile?>(keyCVFile) as ParseFile;
  set cvFile(ParseFile cvFile) => set<ParseFile>(keyCVFile, cvFile);

  JobPost get job => get<JobPost>(keyJob) as JobPost;
  set job(JobPost jobPost) => set<JobPost>(keyJob, jobPost);

  User get author => get<User>(keyAuthor) as User;
  set author(User author) => set<User>(keyAuthor, author);

  DateTime get applicationCreationDate =>
      get<DateTime>(keyApplicationCreationDate) as DateTime;

  String get fileSize => get(keyCVFileSize) as String;
  set fileSize(String fileSize) => set(keyCVFileSize, fileSize);

  @override
  JobApplication getShallowCopy() {
    return JobApplication()
      ..objectId = objectId
      ..author = author
      ..cvFile = cvFile
      ..job = job
      ..set(keyApplicationCreationDate,
          get<DateTime>(keyApplicationCreationDate));
  }

  @override
  List<Object?> get props => [
        get<String?>(keyVarObjectId),
        get<User>(keyAuthor),
        get<JobPost>(keyJob),
        get<ParseFile>(keyCVFile)?.url,
        get<ParseFile>(keyCVFile)?.name,
      ];
}
