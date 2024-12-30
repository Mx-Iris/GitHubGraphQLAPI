// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct OrganizationListItemFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment OrganizationListItemFragment on Organization { __typename id descriptionHTML name login viewerIsFollowing url ...AvatarFragment }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Organization }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("descriptionHTML", String?.self),
    .field("name", String?.self),
    .field("login", String.self),
    .field("viewerIsFollowing", Bool.self),
    .field("url", GitHubGraphQLAPI.URI.self),
    .fragment(AvatarFragment.self),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// The organization's public profile description rendered to HTML.
  public var descriptionHTML: String? { __data["descriptionHTML"] }
  /// The organization's public profile name.
  public var name: String? { __data["name"] }
  /// The organization's login name.
  public var login: String { __data["login"] }
  /// Whether or not this Organization is followed by the viewer.
  public var viewerIsFollowing: Bool { __data["viewerIsFollowing"] }
  /// The HTTP URL for this organization.
  public var url: GitHubGraphQLAPI.URI { __data["url"] }
  /// A URL pointing to the actor's public avatar.
  public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

  public struct Fragments: FragmentContainer {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public var avatarFragment: AvatarFragment { _toFragment() }
  }
}
