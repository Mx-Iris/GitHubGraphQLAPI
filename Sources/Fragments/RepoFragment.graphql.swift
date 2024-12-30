// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct RepoFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment RepoFragment on Repository { __typename ...IssueTemplateFragment ...ConsistencyRepositoryStarInfoFragment id defaultBranchRef @include(if: $defaultBranch) { __typename ...RepositoryBranchInfoFragment } branchInfo: ref(qualifiedName: $qualifiedName) @skip(if: $defaultBranch) { __typename ...RepositoryBranchInfoFragment } defaultBranchName: defaultBranchRef { __typename id name } forkCount hasIssuesEnabled isDiscussionsEnabled discussionsCount homepageUrl isPrivate isTemplate showActions isFork isArchived viewerCanAdminister viewerCanPush viewerHasBlockedContributors hasProjectsEnabled isInOrganization issues(states: OPEN) { __typename totalCount } projectsV2 { __typename totalCount } labels { __typename totalCount } licenseContents licenseInfo { __typename id spdxId name description pseudoLicense conditions { __typename label description } limitations { __typename label description } permissions { __typename label description } url } milestones { __typename totalCount } name owner { __typename id login ...AvatarFragment } parent { __typename id name owner { __typename id login } } pullRequests(states: OPEN) { __typename totalCount } refs(refPrefix: "refs/heads/") { __typename totalCount } readme(refName: $branch) { __typename contentHTML path } repositoryTopics(first: 6) { __typename nodes { __typename id topic { __typename id name } } } description viewerPermission descriptionHTML watchers { __typename totalCount } mergeQueue(branch: $branch) { __typename id entries { __typename totalCount } } isViewersFavorite }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("defaultBranchRef", alias: "defaultBranchName", DefaultBranchName?.self),
    .field("forkCount", Int.self),
    .field("hasIssuesEnabled", Bool.self),
    .field("isDiscussionsEnabled", Bool.self),
    .field("discussionsCount", Int.self),
    .field("homepageUrl", GitHubGraphQLAPI.URI?.self),
    .field("isPrivate", Bool.self),
    .field("isTemplate", Bool.self),
    .field("showActions", Bool.self),
    .field("isFork", Bool.self),
    .field("isArchived", Bool.self),
    .field("viewerCanAdminister", Bool.self),
    .field("viewerCanPush", Bool.self),
    .field("viewerHasBlockedContributors", Bool.self),
    .field("hasProjectsEnabled", Bool.self),
    .field("isInOrganization", Bool.self),
    .field("issues", Issues.self, arguments: ["states": "OPEN"]),
    .field("projectsV2", ProjectsV2.self),
    .field("labels", Labels?.self),
    .field("licenseContents", String?.self),
    .field("licenseInfo", LicenseInfo?.self),
    .field("milestones", Milestones?.self),
    .field("name", String.self),
    .field("owner", Owner.self),
    .field("parent", Parent?.self),
    .field("pullRequests", PullRequests.self, arguments: ["states": "OPEN"]),
    .field("refs", Refs?.self, arguments: ["refPrefix": "refs/heads/"]),
    .field("readme", Readme?.self, arguments: ["refName": .variable("branch")]),
    .field("repositoryTopics", RepositoryTopics.self, arguments: ["first": 6]),
    .field("description", String?.self),
    .field("viewerPermission", GraphQLEnum<GitHubGraphQLAPI.RepositoryPermission>?.self),
    .field("descriptionHTML", GitHubGraphQLAPI.HTML.self),
    .field("watchers", Watchers.self),
    .field("mergeQueue", MergeQueue?.self, arguments: ["branch": .variable("branch")]),
    .field("isViewersFavorite", Bool.self),
    .fragment(IssueTemplateFragment.self),
    .fragment(ConsistencyRepositoryStarInfoFragment.self),
    .include(if: "defaultBranch", .field("defaultBranchRef", DefaultBranchRef?.self)),
    .include(if: !"defaultBranch", .field("ref", alias: "branchInfo", BranchInfo?.self, arguments: ["qualifiedName": .variable("qualifiedName")])),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// The Ref associated with the repository's default branch.
  public var defaultBranchRef: DefaultBranchRef? { __data["defaultBranchRef"] }
  /// Fetch a given ref from the repository
  public var branchInfo: BranchInfo? { __data["branchInfo"] }
  /// The Ref associated with the repository's default branch.
  public var defaultBranchName: DefaultBranchName? { __data["defaultBranchName"] }
  /// Returns how many forks there are of this repository in the whole network.
  public var forkCount: Int { __data["forkCount"] }
  /// Indicates if the repository has issues feature enabled.
  public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
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
  /// Indicates if the repository is unmaintained.
  public var isArchived: Bool { __data["isArchived"] }
  /// Indicates whether the viewer has admin permissions on this repository.
  public var viewerCanAdminister: Bool { __data["viewerCanAdminister"] }
  /// Indicates whether the current user has push permissions on this repository.
  public var viewerCanPush: Bool { __data["viewerCanPush"] }
  /// Has the viewer blocked any contributors in this repository?
  public var viewerHasBlockedContributors: Bool { __data["viewerHasBlockedContributors"] }
  /// Indicates if the repository has the Projects feature enabled.
  public var hasProjectsEnabled: Bool { __data["hasProjectsEnabled"] }
  /// Indicates if a repository is either owned by an organization, or is a private fork of an organization repository.
  public var isInOrganization: Bool { __data["isInOrganization"] }
  /// A list of issues that have been opened in the repository.
  public var issues: Issues { __data["issues"] }
  /// List of projects linked to this repository.
  public var projectsV2: ProjectsV2 { __data["projectsV2"] }
  /// A list of labels associated with the repository.
  public var labels: Labels? { __data["labels"] }
  /// Contents of the license file in the repository
  public var licenseContents: String? { __data["licenseContents"] }
  /// The license associated with the repository
  public var licenseInfo: LicenseInfo? { __data["licenseInfo"] }
  /// A list of milestones associated with the repository.
  public var milestones: Milestones? { __data["milestones"] }
  /// The name of the repository.
  public var name: String { __data["name"] }
  /// The User owner of the repository.
  public var owner: Owner { __data["owner"] }
  /// The repository parent, if this is a fork.
  public var parent: Parent? { __data["parent"] }
  /// A list of pull requests that have been opened in the repository.
  public var pullRequests: PullRequests { __data["pullRequests"] }
  /// Fetch a list of refs from the repository
  public var refs: Refs? { __data["refs"] }
  /// The repository readme.
  public var readme: Readme? { __data["readme"] }
  /// A list of applied repository-topic associations for this repository.
  public var repositoryTopics: RepositoryTopics { __data["repositoryTopics"] }
  /// The description of the repository.
  public var description: String? { __data["description"] }
  /// The users permission level on the repository. Will return null if authenticated as an GitHub App.
  public var viewerPermission: GraphQLEnum<GitHubGraphQLAPI.RepositoryPermission>? { __data["viewerPermission"] }
  /// The description of the repository rendered to HTML.
  public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
  /// A list of users watching the repository.
  public var watchers: Watchers { __data["watchers"] }
  /// The merge queue for a specified branch, otherwise the default branch if not provided.
  public var mergeQueue: MergeQueue? { __data["mergeQueue"] }
  /// Is this repository added to the viewers favorites.
  public var isViewersFavorite: Bool { __data["isViewersFavorite"] }
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
  /// Returns a boolean indicating whether the viewing user has starred this starrable.
  public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
  /// Returns a count of how many stargazers there are on this object
  public var stargazerCount: Int { __data["stargazerCount"] }

  public struct Fragments: FragmentContainer {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public var issueTemplateFragment: IssueTemplateFragment { _toFragment() }
    public var consistencyRepositoryStarInfoFragment: ConsistencyRepositoryStarInfoFragment { _toFragment() }
  }

  /// DefaultBranchRef
  ///
  /// Parent Type: `Ref`
  public struct DefaultBranchRef: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Ref }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .fragment(RepositoryBranchInfoFragment.self),
    ] }

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

    /// DefaultBranchRef.Target
    ///
    /// Parent Type: `GitObject`
    public struct Target: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.GitObject }

      public var asCommit: AsCommit? { _asInlineFragment() }

      /// DefaultBranchRef.Target.AsCommit
      ///
      /// Parent Type: `Commit`
      public struct AsCommit: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = RepoFragment.DefaultBranchRef.Target
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

  /// BranchInfo
  ///
  /// Parent Type: `Ref`
  public struct BranchInfo: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Ref }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .fragment(RepositoryBranchInfoFragment.self),
    ] }

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

    /// BranchInfo.Target
    ///
    /// Parent Type: `GitObject`
    public struct Target: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.GitObject }

      public var asCommit: AsCommit? { _asInlineFragment() }

      /// BranchInfo.Target.AsCommit
      ///
      /// Parent Type: `Commit`
      public struct AsCommit: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = RepoFragment.BranchInfo.Target
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

  /// DefaultBranchName
  ///
  /// Parent Type: `Ref`
  public struct DefaultBranchName: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Ref }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("name", String.self),
    ] }

    /// The Node ID of this object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The ref name.
    public var name: String { __data["name"] }
  }

  /// Issues
  ///
  /// Parent Type: `IssueConnection`
  public struct Issues: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.IssueConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
  }

  /// ProjectsV2
  ///
  /// Parent Type: `ProjectV2Connection`
  public struct ProjectsV2: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.ProjectV2Connection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
  }

  /// Labels
  ///
  /// Parent Type: `LabelConnection`
  public struct Labels: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.LabelConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
  }

  /// LicenseInfo
  ///
  /// Parent Type: `License`
  public struct LicenseInfo: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.License }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("spdxId", String?.self),
      .field("name", String.self),
      .field("description", String?.self),
      .field("pseudoLicense", Bool.self),
      .field("conditions", [Condition?].self),
      .field("limitations", [Limitation?].self),
      .field("permissions", [Permission?].self),
      .field("url", GitHubGraphQLAPI.URI?.self),
    ] }

    /// The Node ID of this object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// Short identifier specified by <https://spdx.org/licenses>
    public var spdxId: String? { __data["spdxId"] }
    /// The license full name specified by <https://spdx.org/licenses>
    public var name: String { __data["name"] }
    /// A human-readable description of the license
    public var description: String? { __data["description"] }
    /// Whether the license is a pseudo-license placeholder (e.g., other, no-license)
    public var pseudoLicense: Bool { __data["pseudoLicense"] }
    /// The conditions set by the license
    public var conditions: [Condition?] { __data["conditions"] }
    /// The limitations set by the license
    public var limitations: [Limitation?] { __data["limitations"] }
    /// The permissions set by the license
    public var permissions: [Permission?] { __data["permissions"] }
    /// URL to the license on <https://choosealicense.com>
    public var url: GitHubGraphQLAPI.URI? { __data["url"] }

    /// LicenseInfo.Condition
    ///
    /// Parent Type: `LicenseRule`
    public struct Condition: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.LicenseRule }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("label", String.self),
        .field("description", String.self),
      ] }

      /// The human-readable rule label
      public var label: String { __data["label"] }
      /// A description of the rule
      public var description: String { __data["description"] }
    }

    /// LicenseInfo.Limitation
    ///
    /// Parent Type: `LicenseRule`
    public struct Limitation: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.LicenseRule }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("label", String.self),
        .field("description", String.self),
      ] }

      /// The human-readable rule label
      public var label: String { __data["label"] }
      /// A description of the rule
      public var description: String { __data["description"] }
    }

    /// LicenseInfo.Permission
    ///
    /// Parent Type: `LicenseRule`
    public struct Permission: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.LicenseRule }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("label", String.self),
        .field("description", String.self),
      ] }

      /// The human-readable rule label
      public var label: String { __data["label"] }
      /// A description of the rule
      public var description: String { __data["description"] }
    }
  }

  /// Milestones
  ///
  /// Parent Type: `MilestoneConnection`
  public struct Milestones: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.MilestoneConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
  }

  /// Owner
  ///
  /// Parent Type: `RepositoryOwner`
  public struct Owner: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("login", String.self),
      .inlineFragment(AsActor.self),
    ] }

    /// The Node ID of the RepositoryOwner object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The username used to login.
    public var login: String { __data["login"] }

    public var asActor: AsActor? { _asInlineFragment() }

    /// Owner.AsActor
    ///
    /// Parent Type: `Actor`
    public struct AsActor: GitHubGraphQLAPI.InlineFragment {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public typealias RootEntityType = RepoFragment.Owner
      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
      public static var __selections: [ApolloAPI.Selection] { [
        .fragment(AvatarFragment.self),
      ] }

      /// The Node ID of the RepositoryOwner object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The username used to login.
      public var login: String { __data["login"] }
      /// A URL pointing to the actor's public avatar.
      public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var avatarFragment: AvatarFragment { _toFragment() }
      }
    }
  }

  /// Parent
  ///
  /// Parent Type: `Repository`
  public struct Parent: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("name", String.self),
      .field("owner", Owner.self),
    ] }

    /// The Node ID of this object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The name of the repository.
    public var name: String { __data["name"] }
    /// The User owner of the repository.
    public var owner: Owner { __data["owner"] }

    /// Parent.Owner
    ///
    /// Parent Type: `RepositoryOwner`
    public struct Owner: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("login", String.self),
      ] }

      /// The Node ID of the RepositoryOwner object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The username used to login.
      public var login: String { __data["login"] }
    }
  }

  /// PullRequests
  ///
  /// Parent Type: `PullRequestConnection`
  public struct PullRequests: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.PullRequestConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
  }

  /// Refs
  ///
  /// Parent Type: `RefConnection`
  public struct Refs: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RefConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
  }

  /// Readme
  ///
  /// Parent Type: `RepositoryReadme`
  public struct Readme: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryReadme }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("contentHTML", GitHubGraphQLAPI.HTML?.self),
      .field("path", String?.self),
    ] }

    /// The html content of the readme.
    public var contentHTML: GitHubGraphQLAPI.HTML? { __data["contentHTML"] }
    /// The full path of the file.
    public var path: String? { __data["path"] }
  }

  /// RepositoryTopics
  ///
  /// Parent Type: `RepositoryTopicConnection`
  public struct RepositoryTopics: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryTopicConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("nodes", [Node?]?.self),
    ] }

    /// A list of nodes.
    public var nodes: [Node?]? { __data["nodes"] }

    /// RepositoryTopics.Node
    ///
    /// Parent Type: `RepositoryTopic`
    public struct Node: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryTopic }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("topic", Topic.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The topic.
      public var topic: Topic { __data["topic"] }

      /// RepositoryTopics.Node.Topic
      ///
      /// Parent Type: `Topic`
      public struct Topic: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Topic }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("name", String.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The topic's name.
        public var name: String { __data["name"] }
      }
    }
  }

  /// Watchers
  ///
  /// Parent Type: `UserConnection`
  public struct Watchers: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserConnection }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("totalCount", Int.self),
    ] }

    /// Identifies the total count of items in the connection.
    public var totalCount: Int { __data["totalCount"] }
  }

  /// MergeQueue
  ///
  /// Parent Type: `MergeQueue`
  public struct MergeQueue: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.MergeQueue }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("entries", Entries?.self),
    ] }

    /// The Node ID of this object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// The entries in the queue
    public var entries: Entries? { __data["entries"] }

    /// MergeQueue.Entries
    ///
    /// Parent Type: `MergeQueueEntryConnection`
    public struct Entries: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.MergeQueueEntryConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("totalCount", Int.self),
      ] }

      /// Identifies the total count of items in the connection.
      public var totalCount: Int { __data["totalCount"] }
    }
  }
}
