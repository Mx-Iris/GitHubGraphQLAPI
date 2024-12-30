// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class StarredRepositoriesForUserQuery: GraphQLQuery {
  public static let operationName: String = "StarredRepositoriesForUser"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query StarredRepositoriesForUser($login: String!, $avatarSize: Int!, $first: Int!, $after: String, $query: String) { user(login: $login) { __typename id starredRepositories( first: $first after: $after query: $query orderBy: { field: STARRED_AT, direction: DESC } ) { __typename pageInfo { __typename hasNextPage endCursor } nodes { __typename ...RepositoryListItemFragment ...UserListMetadataForRepositoryFragment } } } }"#,
      fragments: [AvatarFragment.self, RepositoryListItemFragment.self, UserListFragment.self, UserListMetadataForRepositoryFragment.self]
    ))

  public var login: String
  public var avatarSize: Int
  public var first: Int
  public var after: GraphQLNullable<String>
  public var query: GraphQLNullable<String>

  public init(
    login: String,
    avatarSize: Int,
    first: Int,
    after: GraphQLNullable<String>,
    query: GraphQLNullable<String>
  ) {
    self.login = login
    self.avatarSize = avatarSize
    self.first = first
    self.after = after
    self.query = query
  }

  public var __variables: Variables? { [
    "login": login,
    "avatarSize": avatarSize,
    "first": first,
    "after": after,
    "query": query
  ] }

  public struct Data: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("user", User?.self, arguments: ["login": .variable("login")]),
    ] }

    /// Lookup a user by login.
    public var user: User? { __data["user"] }

    /// User
    ///
    /// Parent Type: `User`
    public struct User: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("starredRepositories", StarredRepositories.self, arguments: [
          "first": .variable("first"),
          "after": .variable("after"),
          "query": .variable("query"),
          "orderBy": [
            "field": "STARRED_AT",
            "direction": "DESC"
          ]
        ]),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// Repositories the user has starred.
      public var starredRepositories: StarredRepositories { __data["starredRepositories"] }

      /// User.StarredRepositories
      ///
      /// Parent Type: `StarredRepositoryConnection`
      public struct StarredRepositories: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.StarredRepositoryConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("pageInfo", PageInfo.self),
          .field("nodes", [Node?]?.self),
        ] }

        /// Information to aid in pagination.
        public var pageInfo: PageInfo { __data["pageInfo"] }
        /// A list of nodes.
        public var nodes: [Node?]? { __data["nodes"] }

        /// User.StarredRepositories.PageInfo
        ///
        /// Parent Type: `PageInfo`
        public struct PageInfo: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.PageInfo }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("hasNextPage", Bool.self),
            .field("endCursor", String?.self),
          ] }

          /// When paginating forwards, are there more items?
          public var hasNextPage: Bool { __data["hasNextPage"] }
          /// When paginating forwards, the cursor to continue.
          public var endCursor: String? { __data["endCursor"] }
        }

        /// User.StarredRepositories.Node
        ///
        /// Parent Type: `Repository`
        public struct Node: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .fragment(RepositoryListItemFragment.self),
            .fragment(UserListMetadataForRepositoryFragment.self),
          ] }

          /// The Node ID of this object
          public var id: GitHubGraphQLAPI.ID { __data["id"] }
          /// The primary language of the repository's code.
          public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
          /// The name of the repository.
          public var name: String { __data["name"] }
          /// The User owner of the repository.
          public var owner: RepositoryListItemFragment.Owner { __data["owner"] }
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
        }
      }
    }
  }
}
