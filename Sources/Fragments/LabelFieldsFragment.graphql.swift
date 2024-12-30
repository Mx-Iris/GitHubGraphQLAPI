// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct LabelFieldsFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment LabelFieldsFragment on Label { __typename id color name }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Label }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("color", String.self),
    .field("name", String.self),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// Identifies the label color.
  public var color: String { __data["color"] }
  /// Identifies the label name.
  public var name: String { __data["name"] }
}
