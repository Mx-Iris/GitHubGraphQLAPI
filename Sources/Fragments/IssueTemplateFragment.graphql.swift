// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct IssueTemplateFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment IssueTemplateFragment on Repository { __typename id isInOrganization issueTemplates { __typename name about title body filename labels(first: 100) { __typename nodes { __typename ...LabelFieldsFragment } } assignees(first: 10) { __typename nodes { __typename ...AssignableUserFieldsFragment } totalCount } } issueFormLinks { __typename about name url } contactLinks { __typename name about url } isBlankIssuesEnabled securityPolicyUrl hasIssuesEnabled isArchived }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("isInOrganization", Bool.self),
    .field("issueTemplates", [IssueTemplate]?.self),
    .field("issueFormLinks", [IssueFormLink]?.self),
    .field("contactLinks", [ContactLink]?.self),
    .field("isBlankIssuesEnabled", Bool.self),
    .field("securityPolicyUrl", GitHubGraphQLAPI.URI?.self),
    .field("hasIssuesEnabled", Bool.self),
    .field("isArchived", Bool.self),
  ] }

  /// The Node ID of this object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// Indicates if a repository is either owned by an organization, or is a private fork of an organization repository.
  public var isInOrganization: Bool { __data["isInOrganization"] }
  /// Returns a list of issue templates associated to the repository
  public var issueTemplates: [IssueTemplate]? { __data["issueTemplates"] }
  /// Returns a list of issue form links associated to the repository
  public var issueFormLinks: [IssueFormLink]? { __data["issueFormLinks"] }
  /// Returns a list of contact links associated to the repository
  public var contactLinks: [ContactLink]? { __data["contactLinks"] }
  /// Returns true if blank issue creation is allowed
  public var isBlankIssuesEnabled: Bool { __data["isBlankIssuesEnabled"] }
  /// The security policy URL.
  public var securityPolicyUrl: GitHubGraphQLAPI.URI? { __data["securityPolicyUrl"] }
  /// Indicates if the repository has issues feature enabled.
  public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
  /// Indicates if the repository is unmaintained.
  public var isArchived: Bool { __data["isArchived"] }

  /// IssueTemplate
  ///
  /// Parent Type: `IssueTemplate`
  public struct IssueTemplate: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.IssueTemplate }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("name", String.self),
      .field("about", String?.self),
      .field("title", String?.self),
      .field("body", String?.self),
      .field("filename", String.self),
      .field("labels", Labels?.self, arguments: ["first": 100]),
      .field("assignees", Assignees.self, arguments: ["first": 10]),
    ] }

    /// The template name.
    public var name: String { __data["name"] }
    /// The template purpose.
    public var about: String? { __data["about"] }
    /// The suggested issue title.
    public var title: String? { __data["title"] }
    /// The suggested issue body.
    public var body: String? { __data["body"] }
    /// The template filename.
    public var filename: String { __data["filename"] }
    /// The suggested issue labels
    public var labels: Labels? { __data["labels"] }
    /// The suggested assignees.
    public var assignees: Assignees { __data["assignees"] }

    /// IssueTemplate.Labels
    ///
    /// Parent Type: `LabelConnection`
    public struct Labels: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.LabelConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("nodes", [Node?]?.self),
      ] }

      /// A list of nodes.
      public var nodes: [Node?]? { __data["nodes"] }

      /// IssueTemplate.Labels.Node
      ///
      /// Parent Type: `Label`
      public struct Node: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Label }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(LabelFieldsFragment.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// Identifies the label color.
        public var color: String { __data["color"] }
        /// Identifies the label name.
        public var name: String { __data["name"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var labelFieldsFragment: LabelFieldsFragment { _toFragment() }
        }
      }
    }

    /// IssueTemplate.Assignees
    ///
    /// Parent Type: `UserConnection`
    public struct Assignees: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("nodes", [Node?]?.self),
        .field("totalCount", Int.self),
      ] }

      /// A list of nodes.
      public var nodes: [Node?]? { __data["nodes"] }
      /// Identifies the total count of items in the connection.
      public var totalCount: Int { __data["totalCount"] }

      /// IssueTemplate.Assignees.Node
      ///
      /// Parent Type: `User`
      public struct Node: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .fragment(AssignableUserFieldsFragment.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The username used to login.
        public var login: String { __data["login"] }
        /// The HTTP URL for this user
        public var url: GitHubGraphQLAPI.URI { __data["url"] }
        /// A URL pointing to the actor's public avatar.
        public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var assignableUserFieldsFragment: AssignableUserFieldsFragment { _toFragment() }
          public var avatarFragment: AvatarFragment { _toFragment() }
        }
      }
    }
  }

  /// IssueFormLink
  ///
  /// Parent Type: `RepositoryContactLink`
  public struct IssueFormLink: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryContactLink }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("about", String.self),
      .field("name", String.self),
      .field("url", GitHubGraphQLAPI.URI.self),
    ] }

    /// The contact link purpose.
    public var about: String { __data["about"] }
    /// The contact link name.
    public var name: String { __data["name"] }
    /// The contact link URL.
    public var url: GitHubGraphQLAPI.URI { __data["url"] }
  }

  /// ContactLink
  ///
  /// Parent Type: `RepositoryContactLink`
  public struct ContactLink: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryContactLink }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("name", String.self),
      .field("about", String.self),
      .field("url", GitHubGraphQLAPI.URI.self),
    ] }

    /// The contact link name.
    public var name: String { __data["name"] }
    /// The contact link purpose.
    public var about: String { __data["about"] }
    /// The contact link URL.
    public var url: GitHubGraphQLAPI.URI { __data["url"] }
  }
}
