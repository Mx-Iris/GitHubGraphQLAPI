// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class RepoProfileQuery: GraphQLQuery {
  public static let operationName: String = "RepoProfile"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query RepoProfile($owner: String!, $name: String!, $defaultBranch: Boolean!, $branch: String, $qualifiedName: String!, $avatarSize: Int!) { viewer { __typename id login privateProfile } repository(owner: $owner, name: $name) { __typename ...RepoFragment ...ReleaseFragment ...consistencyRepositorySubscription ...UserListMetadataForRepositoryFragment topContributors(skipViewer: true, skipBots: true) { __typename ...UserListItemFragment } contributorsCount hasClosableDiscussionsEnabled } }"#,
      fragments: [AssignableUserFieldsFragment.self, AvatarFragment.self, ConsistencyRepositoryStarInfoFragment.self, IssueTemplateFragment.self, LabelFieldsFragment.self, ReleaseFragment.self, RepoFragment.self, RepositoryBranchInfoFragment.self, UserListFragment.self, UserListItemFragment.self, UserListMetadataForRepositoryFragment.self, ConsistencyRepositorySubscription.self]
    ))

  public var owner: String
  public var name: String
  public var defaultBranch: Bool
  public var branch: GraphQLNullable<String>
  public var qualifiedName: String
  public var avatarSize: Int

  public init(
    owner: String,
    name: String,
    defaultBranch: Bool,
    branch: GraphQLNullable<String>,
    qualifiedName: String,
    avatarSize: Int
  ) {
    self.owner = owner
    self.name = name
    self.defaultBranch = defaultBranch
    self.branch = branch
    self.qualifiedName = qualifiedName
    self.avatarSize = avatarSize
  }

  public var __variables: Variables? { [
    "owner": owner,
    "name": name,
    "defaultBranch": defaultBranch,
    "branch": branch,
    "qualifiedName": qualifiedName,
    "avatarSize": avatarSize
  ] }

  public struct Data: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("viewer", Viewer.self),
      .field("repository", Repository?.self, arguments: [
        "owner": .variable("owner"),
        "name": .variable("name")
      ]),
    ] }

    /// The currently authenticated user.
    public var viewer: Viewer { __data["viewer"] }
    /// Lookup a given repository by the owner and repository name.
    public var repository: Repository? { __data["repository"] }

    /// Viewer
    ///
    /// Parent Type: `User`
    public struct Viewer: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("login", String.self),
        .field("privateProfile", Bool.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The username used to login.
      public var login: String { __data["login"] }
      /// Whether user's profile is currently private
      public var privateProfile: Bool { __data["privateProfile"] }
    }

    /// Repository
    ///
    /// Parent Type: `Repository`
    public struct Repository: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("topContributors", [TopContributor].self, arguments: [
          "skipViewer": true,
          "skipBots": true
        ]),
        .field("contributorsCount", Int.self),
        .field("hasClosableDiscussionsEnabled", Bool.self),
        .fragment(RepoFragment.self),
        .fragment(ReleaseFragment.self),
        .fragment(ConsistencyRepositorySubscription.self),
        .fragment(UserListMetadataForRepositoryFragment.self),
      ] }

      /// Users who have made the most commits to this repository. Commit counts are not computed directly from git, results vary from the contributors field.
      public var topContributors: [TopContributor] { __data["topContributors"] }
      /// The number of contributors to this repository
      public var contributorsCount: Int { __data["contributorsCount"] }
      /// Indicates if the closable discussions feature is enabled for this repository
      public var hasClosableDiscussionsEnabled: Bool { __data["hasClosableDiscussionsEnabled"] }
      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// Indicates if a repository is either owned by an organization, or is a private fork of an organization repository.
      public var isInOrganization: Bool { __data["isInOrganization"] }
      /// Returns a list of issue templates associated to the repository
      public var issueTemplates: [IssueTemplateFragment.IssueTemplate]? { __data["issueTemplates"] }
      /// Returns a list of issue form links associated to the repository
      public var issueFormLinks: [IssueTemplateFragment.IssueFormLink]? { __data["issueFormLinks"] }
      /// Returns a list of contact links associated to the repository
      public var contactLinks: [IssueTemplateFragment.ContactLink]? { __data["contactLinks"] }
      /// Returns true if blank issue creation is allowed
      public var isBlankIssuesEnabled: Bool { __data["isBlankIssuesEnabled"] }
      /// The security policy URL.
      public var securityPolicyUrl: GitHubGraphQLAPI.URI? { __data["securityPolicyUrl"] }
      /// Indicates if the repository has issues feature enabled.
      public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
      /// Indicates if the repository is unmaintained.
      public var isArchived: Bool { __data["isArchived"] }
      /// The Ref associated with the repository's default branch.
      public var defaultBranchRef: DefaultBranchRef? { __data["defaultBranchRef"] }
      /// Fetch a given ref from the repository
      public var branchInfo: BranchInfo? { __data["branchInfo"] }
      /// The Ref associated with the repository's default branch.
      public var defaultBranchName: RepoFragment.DefaultBranchName? { __data["defaultBranchName"] }
      /// Returns how many forks there are of this repository in the whole network.
      public var forkCount: Int { __data["forkCount"] }
      /// Are discussions available on this repository?
      public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
      /// Count of the Discussions within this repository.
      public var discussionsCount: Int { __data["discussionsCount"] }
      /// The repository's URL.
      public var homepageUrl: GitHubGraphQLAPI.URI? { __data["homepageUrl"] }
      /// Identifies if the repository is private or internal.
      public var isPrivate: Bool { __data["isPrivate"] }
      /// Identifies if the repository is a template that can be used to generate new repositories.
      public var isTemplate: Bool { __data["isTemplate"] }
      /// Indicates if Actions can be shown for this repository
      public var showActions: Bool { __data["showActions"] }
      /// Identifies if the repository is a fork.
      public var isFork: Bool { __data["isFork"] }
      /// Indicates whether the viewer has admin permissions on this repository.
      public var viewerCanAdminister: Bool { __data["viewerCanAdminister"] }
      /// Indicates whether the current user has push permissions on this repository.
      public var viewerCanPush: Bool { __data["viewerCanPush"] }
      /// Has the viewer blocked any contributors in this repository?
      public var viewerHasBlockedContributors: Bool { __data["viewerHasBlockedContributors"] }
      /// Indicates if the repository has the Projects feature enabled.
      public var hasProjectsEnabled: Bool { __data["hasProjectsEnabled"] }
      /// A list of issues that have been opened in the repository.
      public var issues: RepoFragment.Issues { __data["issues"] }
      /// List of projects linked to this repository.
      public var projectsV2: RepoFragment.ProjectsV2 { __data["projectsV2"] }
      /// A list of labels associated with the repository.
      public var labels: RepoFragment.Labels? { __data["labels"] }
      /// Contents of the license file in the repository
      public var licenseContents: String? { __data["licenseContents"] }
      /// The license associated with the repository
      public var licenseInfo: RepoFragment.LicenseInfo? { __data["licenseInfo"] }
      /// A list of milestones associated with the repository.
      public var milestones: RepoFragment.Milestones? { __data["milestones"] }
      /// The name of the repository.
      public var name: String { __data["name"] }
      /// The User owner of the repository.
      public var owner: RepoFragment.Owner { __data["owner"] }
      /// The repository parent, if this is a fork.
      public var parent: RepoFragment.Parent? { __data["parent"] }
      /// A list of pull requests that have been opened in the repository.
      public var pullRequests: RepoFragment.PullRequests { __data["pullRequests"] }
      /// Fetch a list of refs from the repository
      public var refs: RepoFragment.Refs? { __data["refs"] }
      /// The repository readme.
      public var readme: RepoFragment.Readme? { __data["readme"] }
      /// A list of applied repository-topic associations for this repository.
      public var repositoryTopics: RepoFragment.RepositoryTopics { __data["repositoryTopics"] }
      /// The description of the repository.
      public var description: String? { __data["description"] }
      /// The users permission level on the repository. Will return null if authenticated as an GitHub App.
      public var viewerPermission: GraphQLEnum<GitHubGraphQLAPI.RepositoryPermission>? { __data["viewerPermission"] }
      /// The description of the repository rendered to HTML.
      public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
      /// A list of users watching the repository.
      public var watchers: RepoFragment.Watchers { __data["watchers"] }
      /// The merge queue for a specified branch, otherwise the default branch if not provided.
      public var mergeQueue: RepoFragment.MergeQueue? { __data["mergeQueue"] }
      /// Is this repository added to the viewers favorites.
      public var isViewersFavorite: Bool { __data["isViewersFavorite"] }
      /// Get the latest release for the repository if one exists.
      public var latestRelease: ReleaseFragment.LatestRelease? { __data["latestRelease"] }
      /// List of releases which are dependent on this repository.
      public var releases: ReleaseFragment.Releases { __data["releases"] }
      /// A list of user-lists to which this repository belongs
      public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }
      /// Returns a boolean indicating whether the viewing user has starred this starrable.
      public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
      /// Returns a count of how many stargazers there are on this object
      public var stargazerCount: Int { __data["stargazerCount"] }
      /// Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
      public var viewerSubscription: GraphQLEnum<GitHubGraphQLAPI.SubscriptionState>? { __data["viewerSubscription"] }
      /// Check if the viewer is able to change their subscription status for the repository.
      public var viewerCanSubscribe: Bool { __data["viewerCanSubscribe"] }
      /// If custom subscription this is the types of subscriptions subscribed
      public var viewerSubscriptionTypes: [GraphQLEnum<GitHubGraphQLAPI.CustomSubscriptionType>]? { __data["viewerSubscriptionTypes"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var repoFragment: RepoFragment { _toFragment() }
        public var releaseFragment: ReleaseFragment { _toFragment() }
        public var consistencyRepositorySubscription: ConsistencyRepositorySubscription { _toFragment() }
        public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
        public var issueTemplateFragment: IssueTemplateFragment { _toFragment() }
        public var consistencyRepositoryStarInfoFragment: ConsistencyRepositoryStarInfoFragment { _toFragment() }
      }

      /// Repository.TopContributor
      ///
      /// Parent Type: `User`
      public struct TopContributor: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(UserListItemFragment.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The user's public profile name.
        public var name: String? { __data["name"] }
        /// The username used to login.
        public var login: String { __data["login"] }
        /// The user's public profile bio as HTML.
        public var bioHTML: GitHubGraphQLAPI.HTML { __data["bioHTML"] }
        /// Whether or not this user is followed by the viewer. Inverse of isFollowingViewer.
        public var viewerIsFollowing: Bool { __data["viewerIsFollowing"] }
        /// Whether user's profile is currently private
        public var privateProfile: Bool { __data["privateProfile"] }
        /// Whether or not this user is the viewing user.
        public var isViewer: Bool { __data["isViewer"] }
        /// A URL pointing to the actor's public avatar.
        public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var userListItemFragment: UserListItemFragment { _toFragment() }
          public var avatarFragment: AvatarFragment { _toFragment() }
        }
      }
      /// Repository.DefaultBranchRef
      ///
      /// Parent Type: `Ref`
      public struct DefaultBranchRef: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Ref }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The ref name.
        public var name: String { __data["name"] }
        /// Indicates whether the current user is able to commit to a given branch based on permissions and branch protection rules.
        public var viewerCanCommitToBranch: Bool { __data["viewerCanCommitToBranch"] }
        /// The object the ref points to. Returns null when object does not exist.
        public var target: Target? { __data["target"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var repositoryBranchInfoFragment: RepositoryBranchInfoFragment { _toFragment() }
        }

        /// Repository.DefaultBranchRef.Target
        ///
        /// Parent Type: `GitObject`
        public struct Target: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.GitObject }

          public var asCommit: AsCommit? { _asInlineFragment() }

          /// Repository.DefaultBranchRef.Target.AsCommit
          ///
          /// Parent Type: `Commit`
          public struct AsCommit: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public typealias RootEntityType = RepoProfileQuery.Data.Repository.DefaultBranchRef.Target
            public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Commit }
            public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
              RepositoryBranchInfoFragment.Target.AsCommit.self
            ] }

            /// The Node ID of this object
            public var id: GitHubGraphQLAPI.ID { __data["id"] }
            /// The Git object ID
            public var oid: GitHubGraphQLAPI.GitObjectID { __data["oid"] }
            /// The linear commit history starting from (and including) this commit, in the same order as `git log`.
            public var history: RepositoryBranchInfoFragment.Target.AsCommit.History { __data["history"] }
            /// Check and Status rollup information for this commit.
            public var statusCheckRollup: RepositoryBranchInfoFragment.Target.AsCommit.StatusCheckRollup? { __data["statusCheckRollup"] }
          }
        }
      }

      /// Repository.BranchInfo
      ///
      /// Parent Type: `Ref`
      public struct BranchInfo: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Ref }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The ref name.
        public var name: String { __data["name"] }
        /// Indicates whether the current user is able to commit to a given branch based on permissions and branch protection rules.
        public var viewerCanCommitToBranch: Bool { __data["viewerCanCommitToBranch"] }
        /// The object the ref points to. Returns null when object does not exist.
        public var target: Target? { __data["target"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var repositoryBranchInfoFragment: RepositoryBranchInfoFragment { _toFragment() }
        }

        /// Repository.BranchInfo.Target
        ///
        /// Parent Type: `GitObject`
        public struct Target: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.GitObject }

          public var asCommit: AsCommit? { _asInlineFragment() }

          /// Repository.BranchInfo.Target.AsCommit
          ///
          /// Parent Type: `Commit`
          public struct AsCommit: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public typealias RootEntityType = RepoProfileQuery.Data.Repository.BranchInfo.Target
            public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Commit }
            public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
              RepositoryBranchInfoFragment.Target.AsCommit.self
            ] }

            /// The Node ID of this object
            public var id: GitHubGraphQLAPI.ID { __data["id"] }
            /// The Git object ID
            public var oid: GitHubGraphQLAPI.GitObjectID { __data["oid"] }
            /// The linear commit history starting from (and including) this commit, in the same order as `git log`.
            public var history: RepositoryBranchInfoFragment.Target.AsCommit.History { __data["history"] }
            /// Check and Status rollup information for this commit.
            public var statusCheckRollup: RepositoryBranchInfoFragment.Target.AsCommit.StatusCheckRollup? { __data["statusCheckRollup"] }
          }
        }
      }
    }
  }
}
