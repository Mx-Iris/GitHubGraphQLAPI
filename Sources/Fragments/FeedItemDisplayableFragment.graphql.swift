// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct FeedItemDisplayableFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment FeedItemDisplayableFragment on FeedItemDisplayable { __typename createdAt identifier dismissable }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.FeedItemDisplayable }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("createdAt", GitHubGraphQLAPI.DateTime.self),
    .field("identifier", String.self),
    .field("dismissable", Bool.self),
  ] }

  /// Identifies the date and time when the object was created.
  public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
  /// A unique identifier for this item
  public var identifier: String { __data["identifier"] }
  /// Whether or not this item is dismissable
  public var dismissable: Bool { __data["dismissable"] }
}
