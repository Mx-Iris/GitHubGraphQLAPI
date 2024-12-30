// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct FeedReleaseFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment FeedReleaseFragment on Release { __typename ...ReleaseNameFragment descriptionHTML url author { __typename id login url ...AvatarFragment } ...ReactionFieldsFragment repository { __typename id url owner { __typename id ...ActorFieldsFragment } name openGraphImageUrl } discussion { __typename id repository { __typename id name owner { __typename id login } } number } mentions(first: 5) { __typename totalCount nodes { __typename id ...AvatarFragment login } } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Release }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("descriptionHTML", GitHubGraphQLAPI.HTML?.self),
    .field("url", GitHubGraphQLAPI.URI.self),
    .field("author", Author?.self),
    .field("repository", Repository.self),
    .field("discussion", Discussion?.self),
    .field("mentions", Mentions?.self, arguments: ["first": 5]),
    .fragment(ReleaseNameFragment.self),
    .fragment(ReactionFieldsFragment.self),
  ] }

  /// The description of this release rendered to HTML.
  public var descriptionHTML: GitHubGraphQLAPI.HTML? { __data["descriptionHTML"] }
  /// The HTTP URL for this issue
  public var url: GitHubGraphQLAPI.URI { __data["url"] }
  /// The author of the release
  public var author: Author? { __data["author"] }
  /// The repository that the release belongs to.
  public var repository: Repository { __data["repository"] }
  /// The linked discussion for this release
  public var discussion: Discussion? { __data["discussion"] }
  /// A list of users mentioned in the release description
  public var mentions: Mentions? { __data["mentions"] }
  /// The title of the release.
  public var name: String? { __data["name"] }
  /// The name of the release's Git tag
  public var tagName: String { __data["tagName"] }
  /// The Node ID of the Reactable object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// Can user react to this subject
  public var viewerCanReact: Bool { __data["viewerCanReact"] }
  /// A list of reactions grouped by content left on the subject.
  public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }

  public struct Fragments: FragmentContainer {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public var releaseNameFragment: ReleaseNameFragment { _toFragment() }
    public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
  }

  /// Author
  ///
  /// Parent Type: `User`
  public struct Author: GitHubGraphQLAPI.SelectionSet {
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

  /// Repository
  ///
  /// Parent Type: `Repository`
  public struct Repository: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("url", GitHubGraphQLAPI.URI.self),
      .field("owner", Owner.self),
      .field("name", String.self),
      .field("openGraphImageUrl", GitHubGraphQLAPI.URI.self),
    ] }

    /// The Node ID of this object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The HTTP URL for this repository
    public var url: GitHubGraphQLAPI.URI { __data["url"] }
    /// The User owner of the repository.
    public var owner: Owner { __data["owner"] }
    /// The name of the repository.
    public var name: String { __data["name"] }
    /// The image used to represent this repository in Open Graph data.
    public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }

    /// Repository.Owner
    ///
    /// Parent Type: `RepositoryOwner`
    public struct Owner: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .inlineFragment(AsActor.self),
      ] }

      /// The Node ID of the RepositoryOwner object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }

      public var asActor: AsActor? { _asInlineFragment() }

      /// Repository.Owner.AsActor
      ///
      /// Parent Type: `Actor`
      public struct AsActor: GitHubGraphQLAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = FeedReleaseFragment.Repository.Owner
        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
        public static var __selections: [ApolloAPI.Selection] { [
          .fragment(ActorFieldsFragment.self),
        ] }

        /// The Node ID of the RepositoryOwner object
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

          public var actorFieldsFragment: ActorFieldsFragment { _toFragment() }
          public var avatarFragment: AvatarFragment { _toFragment() }
        }
      }
    }
  }

  /// Discussion
  ///
  /// Parent Type: `Discussion`
  public struct Discussion: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Discussion }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("repository", Repository.self),
      .field("number", Int.self),
    ] }

    /// The Node ID of this object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The repository associated with this node.
    public var repository: Repository { __data["repository"] }
    /// The number identifying this discussion within the repository.
    public var number: Int { __data["number"] }

    /// Discussion.Repository
    ///
    /// Parent Type: `Repository`
    public struct Repository: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("name", String.self),
        .field("owner", Owner.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The name of the repository.
      public var name: String { __data["name"] }
      /// The User owner of the repository.
      public var owner: Owner { __data["owner"] }

      /// Discussion.Repository.Owner
      ///
      /// Parent Type: `RepositoryOwner`
      public struct Owner: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("login", String.self),
        ] }

        /// The Node ID of the RepositoryOwner object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The username used to login.
        public var login: String { __data["login"] }
      }
    }
  }

  /// Mentions
  ///
  /// Parent Type: `UserConnection`
  public struct Mentions: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
      .field("nodes", [Node?]?.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
    /// A list of nodes.
    public var nodes: [Node?]? { __data["nodes"] }

    /// Mentions.Node
    ///
    /// Parent Type: `User`
    public struct Node: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("login", String.self),
        .fragment(AvatarFragment.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The username used to login.
      public var login: String { __data["login"] }
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
