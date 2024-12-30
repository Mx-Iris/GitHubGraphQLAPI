// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct UserListsConsistencyFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment UserListsConsistencyFragment on User { __typename id canCreateLists hasCreatedLists lists(first: 100) { __typename nodes { __typename ...UserListFragment } } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("canCreateLists", Bool.self),
    .field("hasCreatedLists", Bool.self),
    .field("lists", Lists.self, arguments: ["first": 100]),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// Whether this user can create lists.
  public var canCreateLists: Bool { __data["canCreateLists"] }
  /// Whether this user has created lists.
  public var hasCreatedLists: Bool { __data["hasCreatedLists"] }
  /// A user-curated list of repositories
  public var lists: Lists { __data["lists"] }

  /// Lists
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

    /// Lists.Node
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
