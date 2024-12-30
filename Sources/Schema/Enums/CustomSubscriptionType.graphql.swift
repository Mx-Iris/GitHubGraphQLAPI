// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// The possible custom types to subscribe to
public enum CustomSubscriptionType: String, EnumType {
  /// Subscribe to a repository's discussions.
  case discussion = "DISCUSSION"
  /// Subscribe to a repository's issues.
  case issue = "ISSUE"
  /// Subscribe to a repository's releases.
  case release = "RELEASE"
  /// Subscribe to a repository's pull requests.
  case pullRequest = "PULL_REQUEST"
  /// Subscribe to a repository's security alerts.
  case securityAlert = "SECURITY_ALERT"
}
