// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct RepositoryListItemFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment RepositoryListItemFragment on Repository { __typename id primaryLanguage { __typename id name color } name owner { __typename id login ...AvatarFragment } shortDescriptionHTML descriptionHTML stargazerCount parent { __typename id name owner { __typename id login } } usesCustomOpenGraphImage openGraphImageUrl viewerHasStarred hasIssuesEnabled isDiscussionsEnabled isArchived }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("primaryLanguage", PrimaryLanguage?.self),
    .field("name", String.self),
    .field("owner", Owner.self),
    .field("shortDescriptionHTML", GitHubGraphQLAPI.HTML.self),
    .field("descriptionHTML", GitHubGraphQLAPI.HTML.self),
    .field("stargazerCount", Int.self),
    .field("parent", Parent?.self),
    .field("usesCustomOpenGraphImage", Bool.self),
    .field("openGraphImageUrl", GitHubGraphQLAPI.URI.self),
    .field("viewerHasStarred", Bool.self),
    .field("hasIssuesEnabled", Bool.self),
    .field("isDiscussionsEnabled", Bool.self),
    .field("isArchived", Bool.self),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// The primary language of the repository's code.
  public var primaryLanguage: PrimaryLanguage? { __data["primaryLanguage"] }
  /// The name of the repository.
  public var name: String { __data["name"] }
  /// The User owner of the repository.
  public var owner: Owner { __data["owner"] }
  /// A description of the repository, rendered to HTML without any links in it.
  public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
  /// The description of the repository rendered to HTML.
  public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
  /// Returns a count of how many stargazers there are on this object
  public var stargazerCount: Int { __data["stargazerCount"] }
  /// The repository parent, if this is a fork.
  public var parent: Parent? { __data["parent"] }
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

  /// PrimaryLanguage
  ///
  /// Parent Type: `Language`
  public struct PrimaryLanguage: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Language }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("name", String.self),
      .field("color", String?.self),
    ] }

    /// The Node ID of this object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The name of the current language.
    public var name: String { __data["name"] }
    /// The color defined for the current language.
    public var color: String? { __data["color"] }
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
      .field("login", String.self),
      .inlineFragment(AsActor.self),
    ] }

    /// The Node ID of the RepositoryOwner object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The username used to login.
    public var login: String { __data["login"] }

    public var asActor: AsActor? { _asInlineFragment() }

    /// Owner.AsActor
    ///
    /// Parent Type: `Actor`
    public struct AsActor: GitHubGraphQLAPI.InlineFragment {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public typealias RootEntityType = RepositoryListItemFragment.Owner
      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
      public static var __selections: [ApolloAPI.Selection] { [
        .fragment(AvatarFragment.self),
      ] }

      /// The Node ID of the RepositoryOwner object
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

  /// Parent
  ///
  /// Parent Type: `Repository`
  public struct Parent: GitHubGraphQLAPI.SelectionSet {
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

    /// Parent.Owner
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
