// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct ConsistencyRepositoryStarInfoFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment ConsistencyRepositoryStarInfoFragment on Starrable { __typename id viewerHasStarred stargazerCount }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Starrable }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("viewerHasStarred", Bool.self),
    .field("stargazerCount", Int.self),
  ] }

  /// The Node ID of the Starrable object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// Returns a boolean indicating whether the viewing user has starred this starrable.
  public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
  /// Returns a count of how many stargazers there are on this object
  public var stargazerCount: Int { __data["stargazerCount"] }
}
