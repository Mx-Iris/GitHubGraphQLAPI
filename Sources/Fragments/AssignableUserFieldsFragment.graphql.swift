// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct AssignableUserFieldsFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment AssignableUserFieldsFragment on User { __typename id login url ...AvatarFragment }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("login", String.self),
    .field("url", GitHubGraphQLAPI.URI.self),
    .fragment(AvatarFragment.self),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// The username used to login.
  public var login: String { __data["login"] }
  /// The HTTP URL for this user
  public var url: GitHubGraphQLAPI.URI { __data["url"] }
  /// A URL pointing to the actor's public avatar.
  public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

  public struct Fragments: FragmentContainer {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public var avatarFragment: AvatarFragment { _toFragment() }
  }
}
