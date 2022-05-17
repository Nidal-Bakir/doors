import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:flutter/widgets.dart';

enum AccountType { user, company }
enum AccountStatues { active, suspended }
enum PaymentMethod { paypal, masterCard, visa }

enum PostsViewFilter { services, jobs }

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
