// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct UserListMetadataForRepositoryFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment UserListMetadataForRepositoryFragment on Repository { __typename id lists(first: 30, onlyOwnedByViewer: true) { __typename totalCount nodes { __typename ...UserListFragment } } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("lists", Lists.self, arguments: [
      "first": 30,
      "onlyOwnedByViewer": true
    ]),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// A list of user-lists to which this repository belongs
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
      .field("totalCount", Int.self),
      .field("nodes", [Node?]?.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
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
