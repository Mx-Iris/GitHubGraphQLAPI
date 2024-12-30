// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class UserListsQuery: GraphQLQuery {
  public static let operationName: String = "UserLists"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query UserLists($login: String!, $first: Int, $after: String, $skipSuggestions: Boolean!) { user(login: $login) { __typename id canCreateLists hasCreatedLists @skip(if: $skipSuggestions) suggestedListNames @skip(if: $skipSuggestions) { __typename id name } lists(first: $first, after: $after) { __typename nodes { __typename ...UserListFragment } } } }"#,
      fragments: [UserListFragment.self]
    ))

  public var login: String
  public var first: GraphQLNullable<Int>
  public var after: GraphQLNullable<String>
  public var skipSuggestions: Bool

  public init(
    login: String,
    first: GraphQLNullable<Int>,
    after: GraphQLNullable<String>,
    skipSuggestions: Bool
  ) {
    self.login = login
    self.first = first
    self.after = after
    self.skipSuggestions = skipSuggestions
  }

  public var __variables: Variables? { [
    "login": login,
    "first": first,
    "after": after,
    "skipSuggestions": skipSuggestions
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
        .field("canCreateLists", Bool.self),
        .field("lists", Lists.self, arguments: [
          "first": .variable("first"),
          "after": .variable("after")
        ]),
        .include(if: !"skipSuggestions", [
          .field("hasCreatedLists", Bool.self),
          .field("suggestedListNames", [SuggestedListName].self),
        ]),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// Whether this user can create lists.
      public var canCreateLists: Bool { __data["canCreateLists"] }
      /// Whether this user has created lists.
      public var hasCreatedLists: Bool? { __data["hasCreatedLists"] }
      /// Suggested names for user lists
      public var suggestedListNames: [SuggestedListName]? { __data["suggestedListNames"] }
      /// A user-curated list of repositories
      public var lists: Lists { __data["lists"] }

      /// User.SuggestedListName
      ///
      /// Parent Type: `UserListSuggestion`
      public struct SuggestedListName: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserListSuggestion }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GitHubGraphQLAPI.ID?.self),
          .field("name", String?.self),
        ] }

        /// The ID of the suggested user list
        public var id: GitHubGraphQLAPI.ID? { __data["id"] }
        /// The name of the suggested user list
        public var name: String? { __data["name"] }
      }

      /// User.Lists
      ///
      /// Parent Type: `UserListConnection`
      public struct Lists: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserListConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("nodes", [Node?]?.self),
        ] }

        /// A list of nodes.
        public var nodes: [Node?]? { __data["nodes"] }

        /// User.Lists.Node
        ///
        /// Parent Type: `UserList`
        public struct Node: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserList }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .fragment(UserListFragment.self),
          ] }

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
        }
      }
    }
  }
}
