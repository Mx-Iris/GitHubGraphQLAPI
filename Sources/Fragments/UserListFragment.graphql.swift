// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct UserListFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment UserListFragment on UserList { __typename id name isPrivate description items { __typename totalCount } slug }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserList }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("name", String.self),
    .field("isPrivate", Bool.self),
    .field("description", String?.self),
    .field("items", Items.self),
    .field("slug", String.self),
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
  public var items: Items { __data["items"] }
  /// The slug of this list
  public var slug: String { __data["slug"] }

  /// Items
  ///
  /// Parent Type: `UserListItemsConnection`
  public struct Items: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserListItemsConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
  }
}
