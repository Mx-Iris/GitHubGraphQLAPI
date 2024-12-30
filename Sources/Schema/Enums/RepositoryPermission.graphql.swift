// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// The access level to a repository
public enum RepositoryPermission: String, EnumType {
  /// Can read, clone, and push to this repository. Can also manage issues, pull requests, and repository settings, including adding collaborators
  case admin = "ADMIN"
  /// Can read, clone, and push to this repository. They can also manage issues, pull requests, and some repository settings
  case maintain = "MAINTAIN"
  /// Can read, clone, and push to this repository. Can also manage issues and pull requests
  case write = "WRITE"
  /// Can read and clone this repository. Can also manage issues and pull requests
  case triage = "TRIAGE"
  /// Can read and clone this repository. Can also open and comment on issues and pull requests
  case read = "READ"
}
