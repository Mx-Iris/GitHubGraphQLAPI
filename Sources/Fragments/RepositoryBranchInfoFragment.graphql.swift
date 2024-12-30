// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct RepositoryBranchInfoFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment RepositoryBranchInfoFragment on Ref { __typename id name viewerCanCommitToBranch target { __typename ... on Commit { id oid history { __typename totalCount } statusCheckRollup { __typename id state } } } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Ref }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("name", String.self),
    .field("viewerCanCommitToBranch", Bool.self),
    .field("target", Target?.self),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// The ref name.
  public var name: String { __data["name"] }
  /// Indicates whether the current user is able to commit to a given branch based on permissions and branch protection rules.
  public var viewerCanCommitToBranch: Bool { __data["viewerCanCommitToBranch"] }
  /// The object the ref points to. Returns null when object does not exist.
  public var target: Target? { __data["target"] }

  /// Target
  ///
  /// Parent Type: `GitObject`
  public struct Target: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.GitObject }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .inlineFragment(AsCommit.self),
    ] }

    public var asCommit: AsCommit? { _asInlineFragment() }

    /// Target.AsCommit
    ///
    /// Parent Type: `Commit`
    public struct AsCommit: GitHubGraphQLAPI.InlineFragment {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public typealias RootEntityType = RepositoryBranchInfoFragment.Target
      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Commit }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("oid", GitHubGraphQLAPI.GitObjectID.self),
        .field("history", History.self),
        .field("statusCheckRollup", StatusCheckRollup?.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The Git object ID
      public var oid: GitHubGraphQLAPI.GitObjectID { __data["oid"] }
      /// The linear commit history starting from (and including) this commit, in the same order as `git log`.
      public var history: History { __data["history"] }
      /// Check and Status rollup information for this commit.
      public var statusCheckRollup: StatusCheckRollup? { __data["statusCheckRollup"] }

      /// Target.AsCommit.History
      ///
      /// Parent Type: `CommitHistoryConnection`
      public struct History: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.CommitHistoryConnection }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("totalCount", Int.self),
        ] }

        /// Identifies the total count of items in the connection.
        public var totalCount: Int { __data["totalCount"] }
      }

      /// Target.AsCommit.StatusCheckRollup
      ///
      /// Parent Type: `StatusCheckRollup`
      public struct StatusCheckRollup: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.StatusCheckRollup }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("state", GraphQLEnum<GitHubGraphQLAPI.StatusState>.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The combined status for the commit.
        public var state: GraphQLEnum<GitHubGraphQLAPI.StatusState> { __data["state"] }
      }
    }
  }
}
