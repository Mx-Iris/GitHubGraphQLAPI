// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct ReleaseFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment ReleaseFragment on Repository { __typename latestRelease { __typename id tagName name publishedAt } releases { __typename totalCount } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("latestRelease", LatestRelease?.self),
    .field("releases", Releases.self),
  ] }

  /// Get the latest release for the repository if one exists.
  public var latestRelease: LatestRelease? { __data["latestRelease"] }
  /// List of releases which are dependent on this repository.
  public var releases: Releases { __data["releases"] }

  /// LatestRelease
  ///
  /// Parent Type: `Release`
  public struct LatestRelease: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Release }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("tagName", String.self),
      .field("name", String?.self),
      .field("publishedAt", GitHubGraphQLAPI.DateTime?.self),
    ] }

    /// The Node ID of this object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The name of the release's Git tag
    public var tagName: String { __data["tagName"] }
    /// The title of the release.
    public var name: String? { __data["name"] }
    /// Identifies the date and time when the release was created.
    public var publishedAt: GitHubGraphQLAPI.DateTime? { __data["publishedAt"] }
  }

  /// Releases
  ///
  /// Parent Type: `ReleaseConnection`
  public struct Releases: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.ReleaseConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
  }
}
