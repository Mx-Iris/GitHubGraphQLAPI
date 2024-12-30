// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class UpdateUserListsForItemMutation: GraphQLMutation {
  public static let operationName: String = "UpdateUserListsForItem"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"mutation UpdateUserListsForItem($input: UpdateUserListsForItemInput!) { updateUserListsForItem(input: $input) { __typename lists { __typename ...UserListFragment } item { __typename ...UserListMetadataForRepositoryFragment } user { __typename ...UserListsConsistencyFragment } } }"#,
      fragments: [UserListFragment.self, UserListMetadataForRepositoryFragment.self, UserListsConsistencyFragment.self]
    ))

  public var input: UpdateUserListsForItemInput

  public init(input: UpdateUserListsForItemInput) {
    self.input = input
  }

  public var __variables: Variables? { ["input": input] }

  public struct Data: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Mutation }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("updateUserListsForItem", UpdateUserListsForItem?.self, arguments: ["input": .variable("input")]),
    ] }

    /// Updates which of the viewer's lists an item belongs to
    public var updateUserListsForItem: UpdateUserListsForItem? { __data["updateUserListsForItem"] }

    /// UpdateUserListsForItem
    ///
    /// Parent Type: `UpdateUserListsForItemPayload`
    public struct UpdateUserListsForItem: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UpdateUserListsForItemPayload }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("lists", [List]?.self),
        .field("item", Item?.self),
        .field("user", User?.self),
      ] }

      /// The lists to which this item belongs
      public var lists: [List]? { __data["lists"] }
      /// The item that was added
      public var item: Item? { __data["item"] }
      /// The user who owns the lists
      public var user: User? { __data["user"] }

      /// UpdateUserListsForItem.List
      ///
      /// Parent Type: `UserList`
      public struct List: GitHubGraphQLAPI.SelectionSet {
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

      /// UpdateUserListsForItem.Item
      ///
      /// Parent Type: `UserListItems`
      public struct Item: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.UserListItems }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .inlineFragment(AsRepository.self),
        ] }

        public var asRepository: AsRepository? { _asInlineFragment() }

        /// UpdateUserListsForItem.Item.AsRepository
        ///
        /// Parent Type: `Repository`
        public struct AsRepository: GitHubGraphQLAPI.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = UpdateUserListsForItemMutation.Data.UpdateUserListsForItem.Item
          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
          public static var __selections: [ApolloAPI.Selection] { [
            .fragment(UserListMetadataForRepositoryFragment.self),
          ] }

          /// The Node ID of this object
          public var id: GitHubGraphQLAPI.ID { __data["id"] }
          /// A list of user-lists to which this repository belongs
          public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
          }
        }
      }

      /// UpdateUserListsForItem.User
      ///
      /// Parent Type: `User`
      public struct User: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(UserListsConsistencyFragment.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// Whether this user can create lists.
        public var canCreateLists: Bool { __data["canCreateLists"] }
        /// Whether this user has created lists.
        public var hasCreatedLists: Bool { __data["hasCreatedLists"] }
        /// A user-curated list of repositories
        public var lists: UserListsConsistencyFragment.Lists { __data["lists"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var userListsConsistencyFragment: UserListsConsistencyFragment { _toFragment() }
        }
      }
    }
  }
}
