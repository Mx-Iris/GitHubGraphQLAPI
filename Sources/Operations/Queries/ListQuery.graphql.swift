// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class ListQuery: GraphQLQuery {
  public static let operationName: String = "List"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query List($username: String!, $slug: String!, $first: Int, $after: String, $avatarSize: Int!) { list(login: $username, slug: $slug) { __typename owner: user { __typename id login isViewer ...AvatarFragment privateProfile } ...UserListFragment starredRepos: items(first: $first, after: $after) { __typename pageInfo { __typename hasNextPage endCursor } nodes { __typename ...RepositoryListItemFragment ...UserListMetadataForRepositoryFragment } } } }"#,
      fragments: [AvatarFragment.self, RepositoryListItemFragment.self, UserListFragment.self, UserListMetadataForRepositoryFragment.self]
    ))

  public var username: String
  public var slug: String
  public var first: GraphQLNullable<Int>
  public var after: GraphQLNullable<String>
  public var avatarSize: Int

  public init(
    username: String,
    slug: String,
    first: GraphQLNullable<Int>,
    after: GraphQLNullable<String>,
    avatarSize: Int
  ) {
    self.username = username
    self.slug = slug
    self.first = first
    self.after = after
    self.avatarSize = avatarSize
  }

  public var __variables: Variables? { [
    "username": username,
    "slug": slug,
    "first": first,
    "after": after,
    "avatarSize": avatarSize
  ] }

  public struct Data: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("list", List?.self, arguments: [
        "login": .variable("username"),
        "slug": .variable("slug")
      ]),
    ] }

    /// A user-curated list of repositories with the given slug and belonging to the given user
    public var list: List? { __data["list"] }

    /// List
    ///
    /// Parent Type: `UserList`
    public struct List: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserList }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("user", alias: "owner", Owner.self),
        .field("items", alias: "starredRepos", StarredRepos.self, arguments: [
          "first": .variable("first"),
          "after": .variable("after")
        ]),
        .fragment(UserListFragment.self),
      ] }

      /// The user to which this list belongs
      public var owner: Owner { __data["owner"] }
      /// The items associated with this list
      public var starredRepos: StarredRepos { __data["starredRepos"] }
      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The name of this list
      public var name: String { __data["name"] }
      /// Whether or not this list is private
      public var isPrivate: Bool { __data["isPrivate"] }
      /// The description of this list
      public var description: String? { __data["description"] }
      /// The items associated with this list
      public var items: UserListFragment.Items { __data["items"] }
      /// The slug of this list
      public var slug: String { __data["slug"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var userListFragment: UserListFragment { _toFragment() }
      }

      /// List.Owner
      ///
      /// Parent Type: `User`
      public struct Owner: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("login", String.self),
          .field("isViewer", Bool.self),
          .field("privateProfile", Bool.self),
          .fragment(AvatarFragment.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The username used to login.
        public var login: String { __data["login"] }
        /// Whether or not this user is the viewing user.
        public var isViewer: Bool { __data["isViewer"] }
        /// Whether user's profile is currently private
        public var privateProfile: Bool { __data["privateProfile"] }
        /// A URL pointing to the actor's public avatar.
        public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var avatarFragment: AvatarFragment { _toFragment() }
        }
      }

      /// List.StarredRepos
      ///
      /// Parent Type: `UserListItemsConnection`
      public struct StarredRepos: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserListItemsConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("pageInfo", PageInfo.self),
          .field("nodes", [Node?]?.self),
        ] }

        /// Information to aid in pagination.
        public var pageInfo: PageInfo { __data["pageInfo"] }
        /// A list of nodes.
        public var nodes: [Node?]? { __data["nodes"] }

        /// List.StarredRepos.PageInfo
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

        /// List.StarredRepos.Node
        ///
        /// Parent Type: `UserListItems`
        public struct Node: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.UserListItems }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .inlineFragment(AsRepository.self),
          ] }

          public var asRepository: AsRepository? { _asInlineFragment() }

          /// List.StarredRepos.Node.AsRepository
          ///
          /// Parent Type: `Repository`
          public struct AsRepository: GitHubGraphQLAPI.InlineFragment {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public typealias RootEntityType = ListQuery.Data.List.StarredRepos.Node
            public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
            public static var __selections: [ApolloAPI.Selection] { [
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
}
