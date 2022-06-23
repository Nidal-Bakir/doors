import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:flutter/widgets.dart';

enum AppFolder { jobApplications, myResumes }

extension AppFolderName on AppFolder {
  String get folderName {
    switch (this) {
      case AppFolder.jobApplications:
        return 'job applications';
      case AppFolder.myResumes:
        return 'my resumes';
    }
  }
}

enum MessageType { text, image }

enum ReceivedMessageDeletionFromServerStatues {
  needToBeDeletedFromServer,
  onHoldToBeDownLoadedFromServer,
  deleted,
}

enum MessageStatues {
  /// not sent yet
  pending,

  /// message sent successfully
  sent,

  /// error while sending the message
  error,

  // message received from other user.
  received
}

enum AccountType { user, company }
enum AccountStatues { active, suspended }
enum PaymentMethod { paypal, masterCard, visa }

enum PostsViewFilter {
  /// Get services posts
  services,

  /// Get Job posts
  jobs,
}

extension LocalizedPostsViewFilterLabel on PostsViewFilter {
  String localizedServiceType(BuildContext context) {
    switch (this) {
      case PostsViewFilter.services:
        return context.loc.services;
      case PostsViewFilter.jobs:
        return context.loc.jobs;
    }
  }
}

extension ClassNameForPostType on PostsViewFilter {
  String get className {
    switch (this) {
      case PostsViewFilter.services:
        return ServicePost.keyClassName;
      case PostsViewFilter.jobs:
        return JobPost.keyClassName;
    }
  }
}

enum ServiceType { need, offer }

extension LocalizedServiceTypeLabel on ServiceType {
  String localizedServiceType(BuildContext context) {
    switch (this) {
      case ServiceType.need:
        return context.loc.need;
      case ServiceType.offer:
        return context.loc.offer;
    }
  }
}

enum JobType { remotely, inSite, hybrid }

extension LocalizedJobTypeLabel on JobType {
  String localizedJobType(BuildContext context) {
    switch (this) {
      case JobType.remotely:
        return context.loc.remotely;
      case JobType.inSite:
        return context.loc.inSite;
      case JobType.hybrid:
        return context.loc.hybrid;
    }
  }
}

enum PostReportType { spam, violence, suspiciousService, other }
