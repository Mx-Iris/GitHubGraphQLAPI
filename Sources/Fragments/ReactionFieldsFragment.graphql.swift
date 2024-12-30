// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct ReactionFieldsFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment ReactionFieldsFragment on Reactable { __typename id viewerCanReact reactionGroups { __typename viewerHasReacted reactors(first: 3) { __typename nodes { __typename ... on Bot { id login } ... on User { id login } ... on Mannequin { id login } ... on Organization { id login } } totalCount } content } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Reactable }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("id", GitHubGraphQLAPI.ID.self),
    .field("viewerCanReact", Bool.self),
    .field("reactionGroups", [ReactionGroup]?.self),
  ] }

  /// The Node ID of the Reactable object
  public var id: GitHubGraphQLAPI.ID { __data["id"] }
  /// Can user react to this subject
  public var viewerCanReact: Bool { __data["viewerCanReact"] }
  /// A list of reactions grouped by content left on the subject.
  public var reactionGroups: [ReactionGroup]? { __data["reactionGroups"] }

  /// ReactionGroup
  ///
  /// Parent Type: `ReactionGroup`
  public struct ReactionGroup: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.ReactionGroup }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("__typename", String.self),
      .field("viewerHasReacted", Bool.self),
      .field("reactors", Reactors.self, arguments: ["first": 3]),
      .field("content", GraphQLEnum<GitHubGraphQLAPI.ReactionContent>.self),
    ] }

    /// Whether or not the authenticated user has left a reaction on the subject.
    public var viewerHasReacted: Bool { __data["viewerHasReacted"] }
    /// Reactors to the reaction subject with the emotion represented by this reaction group.
    public var reactors: Reactors { __data["reactors"] }
    /// Identifies the emoji reaction.
    public var content: GraphQLEnum<GitHubGraphQLAPI.ReactionContent> { __data["content"] }

    /// ReactionGroup.Reactors
    ///
    /// Parent Type: `ReactorConnection`
    public struct Reactors: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.ReactorConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("nodes", [Node?]?.self),
        .field("totalCount", Int.self),
      ] }

      /// A list of nodes.
      public var nodes: [Node?]? { __data["nodes"] }
      /// Identifies the total count of items in the connection.
      public var totalCount: Int { __data["totalCount"] }

      /// ReactionGroup.Reactors.Node
      ///
      /// Parent Type: `Reactor`
      public struct Node: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.Reactor }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .inlineFragment(AsBot.self),
          .inlineFragment(AsUser.self),
          .inlineFragment(AsMannequin.self),
          .inlineFragment(AsOrganization.self),
        ] }

        public var asBot: AsBot? { _asInlineFragment() }
        public var asUser: AsUser? { _asInlineFragment() }
        public var asMannequin: AsMannequin? { _asInlineFragment() }
        public var asOrganization: AsOrganization? { _asInlineFragment() }

        /// ReactionGroup.Reactors.Node.AsBot
        ///
        /// Parent Type: `Bot`
        public struct AsBot: GitHubGraphQLAPI.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = ReactionFieldsFragment.ReactionGroup.Reactors.Node
          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Bot }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("id", GitHubGraphQLAPI.ID.self),
            .field("login", String.self),
          ] }

          /// The Node ID of this object
          public var id: GitHubGraphQLAPI.ID { __data["id"] }
          /// The username of the actor.
          public var login: String { __data["login"] }
        }

        /// ReactionGroup.Reactors.Node.AsUser
        ///
        /// Parent Type: `User`
        public struct AsUser: GitHubGraphQLAPI.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = ReactionFieldsFragment.ReactionGroup.Reactors.Node
          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("id", GitHubGraphQLAPI.ID.self),
            .field("login", String.self),
          ] }

          /// The Node ID of this object
          public var id: GitHubGraphQLAPI.ID { __data["id"] }
          /// The username used to login.
          public var login: String { __data["login"] }
        }

        /// ReactionGroup.Reactors.Node.AsMannequin
        ///
        /// Parent Type: `Mannequin`
        public struct AsMannequin: GitHubGraphQLAPI.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = ReactionFieldsFragment.ReactionGroup.Reactors.Node
          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Mannequin }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("id", GitHubGraphQLAPI.ID.self),
            .field("login", String.self),
          ] }

          /// The Node ID of this object
          public var id: GitHubGraphQLAPI.ID { __data["id"] }
          /// The username of the actor.
          public var login: String { __data["login"] }
        }

        /// ReactionGroup.Reactors.Node.AsOrganization
        ///
        /// Parent Type: `Organization`
        public struct AsOrganization: GitHubGraphQLAPI.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = ReactionFieldsFragment.ReactionGroup.Reactors.Node
          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Organization }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("id", GitHubGraphQLAPI.ID.self),
            .field("login", String.self),
          ] }

          /// The Node ID of this object
          public var id: GitHubGraphQLAPI.ID { __data["id"] }
          /// The organization's login name.
          public var login: String { __data["login"] }
        }
      }
    }
  }
}
