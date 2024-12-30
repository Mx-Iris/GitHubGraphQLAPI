// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct ActorFieldsFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment ActorFieldsFragment on Actor { __typename ... on Node { id } login url ...AvatarFragment }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("login", String.self),
    .field("url", GitHubGraphQLAPI.URI.self),
    .inlineFragment(AsNode.self),
    .fragment(AvatarFragment.self),
  ] }

  /// The username of the actor.
  public var login: String { __data["login"] }
  /// The HTTP URL for this actor.
  public var url: GitHubGraphQLAPI.URI { __data["url"] }
  /// A URL pointing to the actor's public avatar.
  public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

  public var asNode: AsNode? { _asInlineFragment() }

  public struct Fragments: FragmentContainer {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public var avatarFragment: AvatarFragment { _toFragment() }
  }

  /// AsNode
  ///
  /// Parent Type: `Node`
  public struct AsNode: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = ActorFieldsFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Node }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("id", GitHubGraphQLAPI.ID.self),
    ] }

    /// ID of the object.
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// A URL pointing to the actor's public avatar.
    public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }
    /// The username of the actor.
    public var login: String { __data["login"] }
    /// The HTTP URL for this actor.
    public var url: GitHubGraphQLAPI.URI { __data["url"] }

    public struct Fragments: FragmentContainer {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public var avatarFragment: AvatarFragment { _toFragment() }
    }
  }
}
