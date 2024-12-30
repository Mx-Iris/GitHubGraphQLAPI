// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct ReleaseNameFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment ReleaseNameFragment on Release { __typename name tagName }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Release }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("name", String?.self),
    .field("tagName", String.self),
  ] }

  /// The title of the release.
  public var name: String? { __data["name"] }
  /// The name of the release's Git tag
  public var tagName: String { __data["tagName"] }
}
