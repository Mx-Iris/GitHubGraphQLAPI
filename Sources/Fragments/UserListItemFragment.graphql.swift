// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct UserListItemFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment UserListItemFragment on User { __typename id name login bioHTML ...AvatarFragment viewerIsFollowing privateProfile isViewer }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("name", String?.self),
    .field("login", String.self),
    .field("bioHTML", GitHubGraphQLAPI.HTML.self),
    .field("viewerIsFollowing", Bool.self),
    .field("privateProfile", Bool.self),
    .field("isViewer", Bool.self),
    .fragment(AvatarFragment.self),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// The user's public profile name.
  public var name: String? { __data["name"] }
  /// The username used to login.
  public var login: String { __data["login"] }
  /// The user's public profile bio as HTML.
  public var bioHTML: GitHubGraphQLAPI.HTML { __data["bioHTML"] }
  /// Whether or not this user is followed by the viewer. Inverse of isFollowingViewer.
  public var viewerIsFollowing: Bool { __data["viewerIsFollowing"] }
  /// Whether user's profile is currently private
  public var privateProfile: Bool { __data["privateProfile"] }
  /// Whether or not this user is the viewing user.
  public var isViewer: Bool { __data["isViewer"] }
  /// A URL pointing to the actor's public avatar.
  public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

  public struct Fragments: FragmentContainer {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public var avatarFragment: AvatarFragment { _toFragment() }
  }
}
