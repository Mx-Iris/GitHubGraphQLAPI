// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct AvatarFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment AvatarFragment on Actor { __typename avatarUrl(size: $avatarSize) }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("avatarUrl", GitHubGraphQLAPI.URI.self, arguments: ["size": .variable("avatarSize")]),
  ] }

  /// A URL pointing to the actor's public avatar.
  public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }
}
