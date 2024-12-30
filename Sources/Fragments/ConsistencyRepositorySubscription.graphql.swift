// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct ConsistencyRepositorySubscription: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment consistencyRepositorySubscription on Subscribable { __typename viewerSubscription viewerCanSubscribe ... on Repository { id viewerSubscriptionTypes } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Subscribable }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .field("viewerSubscription", GraphQLEnum<GitHubGraphQLAPI.SubscriptionState>?.self),
    .field("viewerCanSubscribe", Bool.self),
    .inlineFragment(AsRepository.self),
  ] }

  /// Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
  public var viewerSubscription: GraphQLEnum<GitHubGraphQLAPI.SubscriptionState>? { __data["viewerSubscription"] }
  /// Check if the viewer is able to change their subscription status for the repository.
  public var viewerCanSubscribe: Bool { __data["viewerCanSubscribe"] }

  public var asRepository: AsRepository? { _asInlineFragment() }

  /// AsRepository
  ///
  /// Parent Type: `Repository`
  public struct AsRepository: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = ConsistencyRepositorySubscription
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("id", GitHubGraphQLAPI.ID.self),
      .field("viewerSubscriptionTypes", [GraphQLEnum<GitHubGraphQLAPI.CustomSubscriptionType>]?.self),
    ] }

    /// The Node ID of this object
    public var id: GitHubGraphQLAPI.ID { __data["id"] }
    /// If custom subscription this is the types of subscriptions subscribed
    public var viewerSubscriptionTypes: [GraphQLEnum<GitHubGraphQLAPI.CustomSubscriptionType>]? { __data["viewerSubscriptionTypes"] }
    /// Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
    public var viewerSubscription: GraphQLEnum<GitHubGraphQLAPI.SubscriptionState>? { __data["viewerSubscription"] }
    /// Check if the viewer is able to change their subscription status for the repository.
    public var viewerCanSubscribe: Bool { __data["viewerCanSubscribe"] }
  }
}
