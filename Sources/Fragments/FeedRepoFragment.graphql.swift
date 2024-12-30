// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct FeedRepoFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment FeedRepoFragment on Repository { __typename id contributorsCount ...RepositoryListItemFragment description owner { __typename id url } url ...UserListMetadataForRepositoryFragment }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("contributorsCount", Int.self),
    .field("description", String?.self),
    .field("owner", Owner.self),
    .field("url", GitHubGraphQLAPI.URI.self),
    .fragment(RepositoryListItemFragment.self),
    .fragment(UserListMetadataForRepositoryFragment.self),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// The number of contributors to this repository
  public var contributorsCount: Int { __data["contributorsCount"] }
  /// The description of the repository.
  public var description: String? { __data["description"] }
  /// The User owner of the repository.
  public var owner: Owner { __data["owner"] }
  /// The HTTP URL for this repository
  public var url: GitHubGraphQLAPI.URI { __data["url"] }
  /// The primary language of the repository's code.
  public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
  /// The name of the repository.
  public var name: String { __data["name"] }
  /// A description of the repository, rendered to HTML without any links in it.
  public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
  /// The description of the repository rendered to HTML.
  public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
  /// Returns a count of how many stargazers there are on this object
  public var stargazerCount: Int { __data["stargazerCount"] }
  /// The repository parent, if this is a fork.
  public var parent: RepositoryListItemFragment.Parent? { __data["parent"] }
  /// Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
  public var usesCustomOpenGraphImage: Bool { __data["usesCustomOpenGraphImage"] }
  /// The image used to represent this repository in Open Graph data.
  public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }
  /// Returns a boolean indicating whether the viewing user has starred this starrable.
  public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
  /// Indicates if the repository has issues feature enabled.
  public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
  /// Are discussions available on this repository?
  public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
  /// Indicates if the repository is unmaintained.
  public var isArchived: Bool { __data["isArchived"] }
  /// A list of user-lists to which this repository belongs
  public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }

  public struct Fragments: FragmentContainer {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
    public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
  }

  /// Owner
  ///
  /// Parent Type: `RepositoryOwner`
  public struct Owner: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("url", GitHubGraphQLAPI.URI.self),
    ] }

    /// The Node ID of the RepositoryOwner object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The HTTP URL for the owner.
    public var url: GitHubGraphQLAPI.URI { __data["url"] }
    /// The username used to login.
    public var login: String { __data["login"] }

    public var asActor: AsActor? { _asInlineFragment() }

    /// Owner.AsActor
    ///
    /// Parent Type: `Actor`
    public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public typealias RootEntityType = FeedRepoFragment.Owner
      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
      public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
        RepositoryListItemFragment.Owner.self,
        FeedRepoFragment.Owner.self,
        AvatarFragment.self,
        RepositoryListItemFragment.Owner.AsActor.self
      ] }

      /// The Node ID of the RepositoryOwner object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The username used to login.
      public var login: String { __data["login"] }
      /// The HTTP URL for the owner.
      public var url: GitHubGraphQLAPI.URI { __data["url"] }
      /// A URL pointing to the actor's public avatar.
      public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var avatarFragment: AvatarFragment { _toFragment() }
      }
    }
  }
}
