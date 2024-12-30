// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Unions {
  /// Entities that can followed by GitHub users
  static let Followable = Union(
    name: "Followable",
    possibleTypes: [
      Objects.Organization.self,
      Objects.User.self
    ]
  )
}