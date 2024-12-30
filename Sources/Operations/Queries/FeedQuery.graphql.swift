// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class FeedQuery: GraphQLQuery {
  public static let operationName: String = "Feed"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query Feed($first: Int!, $after: String, $avatarSize: Int!, $itemTypes: [FeedItemType!]!) { viewer { __typename id login privateProfile dashboard { __typename id feed { __typename filters { __typename isEnabled filterGroup } items(first: $first, after: $after, itemTypes: $itemTypes) { __typename pageInfo { __typename hasNextPage endCursor } nodes { __typename ...FeedItemFragment ... on FeedItemDisplayable { relatedItems { __typename ...FeedItemFragment } } } } } } } }"#,
      fragments: [ActorFieldsFragment.self, AvatarFragment.self, FeedItemDisplayableFragment.self, FeedItemFragment.self, FeedReleaseFragment.self, FeedRepoFragment.self, OrganizationListItemFragment.self, ReactionFieldsFragment.self, ReleaseNameFragment.self, RepositoryListItemFragment.self, UserListFragment.self, UserListItemFragment.self, UserListMetadataForRepositoryFragment.self]
    ))

  public var first: Int
  public var after: GraphQLNullable<String>
  public var avatarSize: Int
  public var itemTypes: [GraphQLEnum<FeedItemType>]

  public init(
    first: Int,
    after: GraphQLNullable<String>,
    avatarSize: Int,
    itemTypes: [GraphQLEnum<FeedItemType>]
  ) {
    self.first = first
    self.after = after
    self.avatarSize = avatarSize
    self.itemTypes = itemTypes
  }

  public var __variables: Variables? { [
    "first": first,
    "after": after,
    "avatarSize": avatarSize,
    "itemTypes": itemTypes
  ] }

  public struct Data: GitHubGraphQLAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("viewer", Viewer.self),
    ] }

    /// The currently authenticated user.
    public var viewer: Viewer { __data["viewer"] }

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
        .field("dashboard", Dashboard?.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The username used to login.
      public var login: String { __data["login"] }
      /// Whether user's profile is currently private
      public var privateProfile: Bool { __data["privateProfile"] }
      /// Dashboard for this user.
      public var dashboard: Dashboard? { __data["dashboard"] }

      /// Viewer.Dashboard
      ///
      /// Parent Type: `UserDashboard`
      public struct Dashboard: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.UserDashboard }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("feed", Feed.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The home feed for this dashboard
        public var feed: Feed { __data["feed"] }

        /// Viewer.Dashboard.Feed
        ///
        /// Parent Type: `Feed`
        public struct Feed: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Feed }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("filters", [Filter]?.self),
            .field("items", Items.self, arguments: [
              "first": .variable("first"),
              "after": .variable("after"),
              "itemTypes": .variable("itemTypes")
            ]),
          ] }

          /// The filter settings for this feed
          public var filters: [Filter]? { __data["filters"] }
          /// A list of feed items
          public var items: Items { __data["items"] }

          /// Viewer.Dashboard.Feed.Filter
          ///
          /// Parent Type: `FeedFilter`
          public struct Filter: GitHubGraphQLAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.FeedFilter }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("isEnabled", Bool.self),
              .field("filterGroup", GraphQLEnum<GitHubGraphQLAPI.DashboardFeedFilterGroup>.self),
            ] }

            /// Whether or not the filter is enabled
            public var isEnabled: Bool { __data["isEnabled"] }
            /// The filter group that this filter belongs to
            public var filterGroup: GraphQLEnum<GitHubGraphQLAPI.DashboardFeedFilterGroup> { __data["filterGroup"] }
          }

          /// Viewer.Dashboard.Feed.Items
          ///
          /// Parent Type: `FeedItemConnection`
          public struct Items: GitHubGraphQLAPI.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.FeedItemConnection }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("pageInfo", PageInfo.self),
              .field("nodes", [Node?]?.self),
            ] }

            /// Information to aid in pagination.
            public var pageInfo: PageInfo { __data["pageInfo"] }
            /// A list of nodes.
            public var nodes: [Node?]? { __data["nodes"] }

            /// Viewer.Dashboard.Feed.Items.PageInfo
            ///
            /// Parent Type: `PageInfo`
            public struct PageInfo: GitHubGraphQLAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.PageInfo }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("hasNextPage", Bool.self),
                .field("endCursor", String?.self),
              ] }

              /// When paginating forwards, are there more items?
              public var hasNextPage: Bool { __data["hasNextPage"] }
              /// When paginating forwards, the cursor to continue.
              public var endCursor: String? { __data["endCursor"] }
            }

            /// Viewer.Dashboard.Feed.Items.Node
            ///
            /// Parent Type: `FeedItem`
            public struct Node: GitHubGraphQLAPI.SelectionSet {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.FeedItem }
              public static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .inlineFragment(AsFeedItemDisplayable.self),
                .fragment(FeedItemFragment.self),
              ] }

              public var asFeedItemDisplayable: AsFeedItemDisplayable? { _asInlineFragment() }
              public var asCreatedDiscussionFeedItem: AsCreatedDiscussionFeedItem? { _asInlineFragment() }
              public var asCreatedRepositoryFeedItem: AsCreatedRepositoryFeedItem? { _asInlineFragment() }
              public var asFollowRecommendationFeedItem: AsFollowRecommendationFeedItem? { _asInlineFragment() }
              public var asFollowedUserFeedItem: AsFollowedUserFeedItem? { _asInlineFragment() }
              public var asForkedRepositoryFeedItem: AsForkedRepositoryFeedItem? { _asInlineFragment() }
              public var asMergedPullRequestFeedItem: AsMergedPullRequestFeedItem? { _asInlineFragment() }
              public var asPublishedReleaseFeedItem: AsPublishedReleaseFeedItem? { _asInlineFragment() }
              public var asRepositoryRecommendationFeedItem: AsRepositoryRecommendationFeedItem? { _asInlineFragment() }
              public var asStarredRepositoryFeedItem: AsStarredRepositoryFeedItem? { _asInlineFragment() }

              public struct Fragments: FragmentContainer {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public var feedItemFragment: FeedItemFragment { _toFragment() }
              }

              /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable
              ///
              /// Parent Type: `FeedItemDisplayable`
              public struct AsFeedItemDisplayable: GitHubGraphQLAPI.InlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.FeedItemDisplayable }
                public static var __selections: [ApolloAPI.Selection] { [
                  .field("relatedItems", [RelatedItem].self),
                ] }

                /// Related items to this item.
                public var relatedItems: [RelatedItem] { __data["relatedItems"] }
                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                ///
                /// Parent Type: `FeedItem`
                public struct RelatedItem: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.FeedItem }
                  public static var __selections: [ApolloAPI.Selection] { [
                    .field("__typename", String.self),
                    .fragment(FeedItemFragment.self),
                  ] }

                  public var asFeedItemDisplayable: AsFeedItemDisplayable? { _asInlineFragment() }
                  public var asCreatedDiscussionFeedItem: AsCreatedDiscussionFeedItem? { _asInlineFragment() }
                  public var asCreatedRepositoryFeedItem: AsCreatedRepositoryFeedItem? { _asInlineFragment() }
                  public var asFollowRecommendationFeedItem: AsFollowRecommendationFeedItem? { _asInlineFragment() }
                  public var asFollowedUserFeedItem: AsFollowedUserFeedItem? { _asInlineFragment() }
                  public var asForkedRepositoryFeedItem: AsForkedRepositoryFeedItem? { _asInlineFragment() }
                  public var asMergedPullRequestFeedItem: AsMergedPullRequestFeedItem? { _asInlineFragment() }
                  public var asPublishedReleaseFeedItem: AsPublishedReleaseFeedItem? { _asInlineFragment() }
                  public var asRepositoryRecommendationFeedItem: AsRepositoryRecommendationFeedItem? { _asInlineFragment() }
                  public var asStarredRepositoryFeedItem: AsStarredRepositoryFeedItem? { _asInlineFragment() }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var feedItemFragment: FeedItemFragment { _toFragment() }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFeedItemDisplayable
                  ///
                  /// Parent Type: `FeedItemDisplayable`
                  public struct AsFeedItemDisplayable: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.FeedItemDisplayable }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsCreatedDiscussionFeedItem
                  ///
                  /// Parent Type: `CreatedDiscussionFeedItem`
                  public struct AsCreatedDiscussionFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.CreatedDiscussionFeedItem }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedItemFragment.AsCreatedDiscussionFeedItem.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }
                    /// The user who created the discussion
                    public var actor: Actor { __data["actor"] }
                    /// The discussion that was created
                    public var discussion: Discussion { __data["discussion"] }
                    /// The URL of the preview image for this item
                    public var previewImageUrl: GitHubGraphQLAPI.URI? { __data["previewImageUrl"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsCreatedDiscussionFeedItem.Actor
                    ///
                    /// Parent Type: `User`
                    public struct Actor: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                      /// The HTTP URL for this user
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                        public var userListItemFragment: UserListItemFragment { _toFragment() }
                      }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsCreatedDiscussionFeedItem.Discussion
                    ///
                    /// Parent Type: `Discussion`
                    public struct Discussion: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Discussion }

                      /// The Node ID of this object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// Can user react to this subject
                      public var viewerCanReact: Bool { __data["viewerCanReact"] }
                      /// A list of reactions grouped by content left on the subject.
                      public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }
                      /// The number identifying this discussion within the repository.
                      public var number: Int { __data["number"] }
                      /// The body rendered to HTML.
                      public var bodyHTML: GitHubGraphQLAPI.HTML { __data["bodyHTML"] }
                      /// The category for this discussion.
                      public var category: FeedItemFragment.AsCreatedDiscussionFeedItem.Discussion.Category { __data["category"] }
                      /// The title of this discussion.
                      public var title: String { __data["title"] }
                      /// The repository associated with this node.
                      public var repository: FeedItemFragment.AsCreatedDiscussionFeedItem.Discussion.Repository { __data["repository"] }
                      /// Number of upvotes that this subject has received.
                      public var upvoteCount: Int { __data["upvoteCount"] }
                      /// Whether or not the current user can add or remove an upvote on this subject.
                      public var viewerCanUpvote: Bool { __data["viewerCanUpvote"] }
                      /// Whether or not the current user has already upvoted this subject.
                      public var viewerHasUpvoted: Bool { __data["viewerHasUpvoted"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
                      }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsCreatedRepositoryFeedItem
                  ///
                  /// Parent Type: `CreatedRepositoryFeedItem`
                  public struct AsCreatedRepositoryFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.CreatedRepositoryFeedItem }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedItemFragment.AsCreatedRepositoryFeedItem.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }
                    /// The user who created the repository
                    public var actor: Actor { __data["actor"] }
                    /// The repository that was created
                    public var repository: Repository { __data["repository"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsCreatedRepositoryFeedItem.Actor
                    ///
                    /// Parent Type: `User`
                    public struct Actor: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                      /// The HTTP URL for this user
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                        public var userListItemFragment: UserListItemFragment { _toFragment() }
                      }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsCreatedRepositoryFeedItem.Repository
                    ///
                    /// Parent Type: `Repository`
                    public struct Repository: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }

                      /// The Node ID of this object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// The primary language of the repository's code.
                      public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
                      /// The name of the repository.
                      public var name: String { __data["name"] }
                      /// The User owner of the repository.
                      public var owner: Owner { __data["owner"] }
                      /// A description of the repository, rendered to HTML without any links in it.
                      public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
                      /// The description of the repository rendered to HTML.
                      public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
                      /// Returns a count of how many stargazers there are on this object
                      public var stargazerCount: Int { __data["stargazerCount"] }
                      /// The repository parent, if this is a fork.
                      public var parent: RepositoryListItemFragment.Parent? { __data["parent"] }
                      /// Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
                      public var usesCustomOpenGraphImage: Bool { __data["usesCustomOpenGraphImage"] }
                      /// The image used to represent this repository in Open Graph data.
                      public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }
                      /// Returns a boolean indicating whether the viewing user has starred this starrable.
                      public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
                      /// Indicates if the repository has issues feature enabled.
                      public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
                      /// Are discussions available on this repository?
                      public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
                      /// Indicates if the repository is unmaintained.
                      public var isArchived: Bool { __data["isArchived"] }
                      /// A list of user-lists to which this repository belongs
                      public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }
                      /// The number of contributors to this repository
                      public var contributorsCount: Int { __data["contributorsCount"] }
                      /// The description of the repository.
                      public var description: String? { __data["description"] }
                      /// The HTTP URL for this repository
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
                        public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
                        public var feedRepoFragment: FeedRepoFragment { _toFragment() }
                      }

                      /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsCreatedRepositoryFeedItem.Repository.Owner
                      ///
                      /// Parent Type: `RepositoryOwner`
                      public struct Owner: GitHubGraphQLAPI.SelectionSet {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }

                        /// The Node ID of the RepositoryOwner object
                        public var id: GitHubGraphQLAPI.ID { __data["id"] }
                        /// The username used to login.
                        public var login: String { __data["login"] }
                        /// The HTTP URL for the owner.
                        public var url: GitHubGraphQLAPI.URI { __data["url"] }

                        public var asActor: AsActor? { _asInlineFragment() }

                        /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsCreatedRepositoryFeedItem.Repository.Owner.AsActor
                        ///
                        /// Parent Type: `Actor`
                        public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                          public let __data: DataDict
                          public init(_dataDict: DataDict) { __data = _dataDict }

                          public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsCreatedRepositoryFeedItem.Repository.Owner
                          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
                          public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                            RepositoryListItemFragment.Owner.self,
                            FeedRepoFragment.Owner.self,
                            AvatarFragment.self,
                            RepositoryListItemFragment.Owner.AsActor.self
                          ] }

                          /// The Node ID of the RepositoryOwner object
                          public var id: GitHubGraphQLAPI.ID { __data["id"] }
                          /// The username used to login.
                          public var login: String { __data["login"] }
                          /// The HTTP URL for the owner.
                          public var url: GitHubGraphQLAPI.URI { __data["url"] }
                          /// A URL pointing to the actor's public avatar.
                          public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                          public struct Fragments: FragmentContainer {
                            public let __data: DataDict
                            public init(_dataDict: DataDict) { __data = _dataDict }

                            public var avatarFragment: AvatarFragment { _toFragment() }
                          }
                        }
                      }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowRecommendationFeedItem
                  ///
                  /// Parent Type: `FollowRecommendationFeedItem`
                  public struct AsFollowRecommendationFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.FollowRecommendationFeedItem }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedItemFragment.AsFollowRecommendationFeedItem.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }
                    /// The reason why the user or organization was recommended
                    public var reason: String { __data["reason"] }
                    /// The user or organization that is recommended to follow
                    public var followee: Followee { __data["followee"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowRecommendationFeedItem.Followee
                    ///
                    /// Parent Type: `Followable`
                    public struct Followee: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.Followable }

                      public var asUser: AsUser? { _asInlineFragment() }
                      public var asOrganization: AsOrganization? { _asInlineFragment() }

                      /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowRecommendationFeedItem.Followee.AsUser
                      ///
                      /// Parent Type: `User`
                      public struct AsUser: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowRecommendationFeedItem.Followee
                        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
                        public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                          UserListItemFragment.self,
                          AvatarFragment.self,
                          FeedItemFragment.AsFollowRecommendationFeedItem.Followee.AsUser.self
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
                        /// The HTTP URL for this user
                        public var url: GitHubGraphQLAPI.URI { __data["url"] }
                        /// Repositories the user has starred.
                        public var starredRepositories: FeedItemFragment.AsFollowRecommendationFeedItem.Followee.AsUser.StarredRepositories { __data["starredRepositories"] }
                        /// A list of repositories that the user owns.
                        public var repositories: FeedItemFragment.AsFollowRecommendationFeedItem.Followee.AsUser.Repositories { __data["repositories"] }

                        public struct Fragments: FragmentContainer {
                          public let __data: DataDict
                          public init(_dataDict: DataDict) { __data = _dataDict }

                          public var avatarFragment: AvatarFragment { _toFragment() }
                          public var userListItemFragment: UserListItemFragment { _toFragment() }
                        }
                      }

                      /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowRecommendationFeedItem.Followee.AsOrganization
                      ///
                      /// Parent Type: `Organization`
                      public struct AsOrganization: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowRecommendationFeedItem.Followee
                        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Organization }
                        public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                          OrganizationListItemFragment.self,
                          AvatarFragment.self,
                          FeedItemFragment.AsFollowRecommendationFeedItem.Followee.AsOrganization.self
                        ] }

                        /// The Node ID of this object
                        public var id: GitHubGraphQLAPI.ID { __data["id"] }
                        /// The organization's public profile description rendered to HTML.
                        public var descriptionHTML: String? { __data["descriptionHTML"] }
                        /// The organization's public profile name.
                        public var name: String? { __data["name"] }
                        /// The organization's login name.
                        public var login: String { __data["login"] }
                        /// Whether or not this Organization is followed by the viewer.
                        public var viewerIsFollowing: Bool { __data["viewerIsFollowing"] }
                        /// The HTTP URL for this organization.
                        public var url: GitHubGraphQLAPI.URI { __data["url"] }
                        /// A URL pointing to the actor's public avatar.
                        public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                        public struct Fragments: FragmentContainer {
                          public let __data: DataDict
                          public init(_dataDict: DataDict) { __data = _dataDict }

                          public var avatarFragment: AvatarFragment { _toFragment() }
                          public var organizationListItemFragment: OrganizationListItemFragment { _toFragment() }
                        }
                      }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowedUserFeedItem
                  ///
                  /// Parent Type: `FollowedUserFeedItem`
                  public struct AsFollowedUserFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.FollowedUserFeedItem }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedItemFragment.AsFollowedUserFeedItem.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }
                    /// The entity that was followed
                    public var followee: Followee { __data["followee"] }
                    /// The user who performed the follow action
                    public var follower: Follower { __data["follower"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowedUserFeedItem.Followee
                    ///
                    /// Parent Type: `Followable`
                    public struct Followee: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.Followable }

                      public var asUser: AsUser? { _asInlineFragment() }
                      public var asOrganization: AsOrganization? { _asInlineFragment() }

                      /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowedUserFeedItem.Followee.AsUser
                      ///
                      /// Parent Type: `User`
                      public struct AsUser: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowedUserFeedItem.Followee
                        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
                        public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                          UserListItemFragment.self,
                          AvatarFragment.self,
                          FeedItemFragment.AsFollowedUserFeedItem.Followee.AsUser.self
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
                        /// The HTTP URL for this user
                        public var url: GitHubGraphQLAPI.URI { __data["url"] }
                        /// Repositories the user has starred.
                        public var starredRepositories: FeedItemFragment.AsFollowedUserFeedItem.Followee.AsUser.StarredRepositories { __data["starredRepositories"] }
                        /// A list of repositories that the user owns.
                        public var repositories: FeedItemFragment.AsFollowedUserFeedItem.Followee.AsUser.Repositories { __data["repositories"] }

                        public struct Fragments: FragmentContainer {
                          public let __data: DataDict
                          public init(_dataDict: DataDict) { __data = _dataDict }

                          public var avatarFragment: AvatarFragment { _toFragment() }
                          public var userListItemFragment: UserListItemFragment { _toFragment() }
                        }
                      }

                      /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowedUserFeedItem.Followee.AsOrganization
                      ///
                      /// Parent Type: `Organization`
                      public struct AsOrganization: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowedUserFeedItem.Followee
                        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Organization }
                        public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                          OrganizationListItemFragment.self,
                          AvatarFragment.self,
                          FeedItemFragment.AsFollowedUserFeedItem.Followee.AsOrganization.self
                        ] }

                        /// The Node ID of this object
                        public var id: GitHubGraphQLAPI.ID { __data["id"] }
                        /// The organization's public profile description rendered to HTML.
                        public var descriptionHTML: String? { __data["descriptionHTML"] }
                        /// The organization's public profile name.
                        public var name: String? { __data["name"] }
                        /// The organization's login name.
                        public var login: String { __data["login"] }
                        /// Whether or not this Organization is followed by the viewer.
                        public var viewerIsFollowing: Bool { __data["viewerIsFollowing"] }
                        /// The HTTP URL for this organization.
                        public var url: GitHubGraphQLAPI.URI { __data["url"] }
                        /// A URL pointing to the actor's public avatar.
                        public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                        public struct Fragments: FragmentContainer {
                          public let __data: DataDict
                          public init(_dataDict: DataDict) { __data = _dataDict }

                          public var avatarFragment: AvatarFragment { _toFragment() }
                          public var organizationListItemFragment: OrganizationListItemFragment { _toFragment() }
                        }
                      }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsFollowedUserFeedItem.Follower
                    ///
                    /// Parent Type: `User`
                    public struct Follower: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                      /// The HTTP URL for this user
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                        public var userListItemFragment: UserListItemFragment { _toFragment() }
                      }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsForkedRepositoryFeedItem
                  ///
                  /// Parent Type: `ForkedRepositoryFeedItem`
                  public struct AsForkedRepositoryFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.ForkedRepositoryFeedItem }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedItemFragment.AsForkedRepositoryFeedItem.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }
                    /// The user who forked the repository
                    public var actor: Actor { __data["actor"] }
                    /// The repository that was forked
                    public var repository: Repository { __data["repository"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsForkedRepositoryFeedItem.Actor
                    ///
                    /// Parent Type: `User`
                    public struct Actor: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                      /// The HTTP URL for this user
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                        public var userListItemFragment: UserListItemFragment { _toFragment() }
                      }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsForkedRepositoryFeedItem.Repository
                    ///
                    /// Parent Type: `Repository`
                    public struct Repository: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }

                      /// The Node ID of this object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// The primary language of the repository's code.
                      public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
                      /// The name of the repository.
                      public var name: String { __data["name"] }
                      /// The User owner of the repository.
                      public var owner: Owner { __data["owner"] }
                      /// A description of the repository, rendered to HTML without any links in it.
                      public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
                      /// The description of the repository rendered to HTML.
                      public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
                      /// Returns a count of how many stargazers there are on this object
                      public var stargazerCount: Int { __data["stargazerCount"] }
                      /// The repository parent, if this is a fork.
                      public var parent: RepositoryListItemFragment.Parent? { __data["parent"] }
                      /// Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
                      public var usesCustomOpenGraphImage: Bool { __data["usesCustomOpenGraphImage"] }
                      /// The image used to represent this repository in Open Graph data.
                      public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }
                      /// Returns a boolean indicating whether the viewing user has starred this starrable.
                      public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
                      /// Indicates if the repository has issues feature enabled.
                      public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
                      /// Are discussions available on this repository?
                      public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
                      /// Indicates if the repository is unmaintained.
                      public var isArchived: Bool { __data["isArchived"] }
                      /// A list of user-lists to which this repository belongs
                      public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }
                      /// The number of contributors to this repository
                      public var contributorsCount: Int { __data["contributorsCount"] }
                      /// The description of the repository.
                      public var description: String? { __data["description"] }
                      /// The HTTP URL for this repository
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
                        public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
                        public var feedRepoFragment: FeedRepoFragment { _toFragment() }
                      }

                      /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsForkedRepositoryFeedItem.Repository.Owner
                      ///
                      /// Parent Type: `RepositoryOwner`
                      public struct Owner: GitHubGraphQLAPI.SelectionSet {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }

                        /// The Node ID of the RepositoryOwner object
                        public var id: GitHubGraphQLAPI.ID { __data["id"] }
                        /// The username used to login.
                        public var login: String { __data["login"] }
                        /// The HTTP URL for the owner.
                        public var url: GitHubGraphQLAPI.URI { __data["url"] }

                        public var asActor: AsActor? { _asInlineFragment() }

                        /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsForkedRepositoryFeedItem.Repository.Owner.AsActor
                        ///
                        /// Parent Type: `Actor`
                        public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                          public let __data: DataDict
                          public init(_dataDict: DataDict) { __data = _dataDict }

                          public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsForkedRepositoryFeedItem.Repository.Owner
                          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
                          public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                            RepositoryListItemFragment.Owner.self,
                            FeedRepoFragment.Owner.self,
                            AvatarFragment.self,
                            RepositoryListItemFragment.Owner.AsActor.self
                          ] }

                          /// The Node ID of the RepositoryOwner object
                          public var id: GitHubGraphQLAPI.ID { __data["id"] }
                          /// The username used to login.
                          public var login: String { __data["login"] }
                          /// The HTTP URL for the owner.
                          public var url: GitHubGraphQLAPI.URI { __data["url"] }
                          /// A URL pointing to the actor's public avatar.
                          public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                          public struct Fragments: FragmentContainer {
                            public let __data: DataDict
                            public init(_dataDict: DataDict) { __data = _dataDict }

                            public var avatarFragment: AvatarFragment { _toFragment() }
                          }
                        }
                      }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsMergedPullRequestFeedItem
                  ///
                  /// Parent Type: `MergedPullRequestFeedItem`
                  public struct AsMergedPullRequestFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.MergedPullRequestFeedItem }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedItemFragment.AsMergedPullRequestFeedItem.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }
                    /// The author of the pull request
                    public var actor: Actor { __data["actor"] }
                    /// The pull request that was merged
                    public var pullRequest: PullRequest { __data["pullRequest"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsMergedPullRequestFeedItem.Actor
                    ///
                    /// Parent Type: `User`
                    public struct Actor: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                      /// The HTTP URL for this user
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                        public var userListItemFragment: UserListItemFragment { _toFragment() }
                      }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsMergedPullRequestFeedItem.PullRequest
                    ///
                    /// Parent Type: `PullRequest`
                    public struct PullRequest: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.PullRequest }

                      /// The Node ID of this object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// Can user react to this subject
                      public var viewerCanReact: Bool { __data["viewerCanReact"] }
                      /// A list of reactions grouped by content left on the subject.
                      public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }
                      /// Identifies the state of the pull request.
                      public var state: GraphQLEnum<GitHubGraphQLAPI.PullRequestState> { __data["state"] }
                      /// Identifies the name of the base Ref associated with the pull request, even if the ref has been deleted.
                      public var baseRefName: String { __data["baseRefName"] }
                      /// Identifies the name of the head Ref associated with the pull request, even if the ref has been deleted.
                      public var headRefName: String { __data["headRefName"] }
                      /// The HTTP URL for this pull request.
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }
                      /// Identifies the pull request number.
                      public var number: Int { __data["number"] }
                      /// The owner of the repository associated with this pull request's head Ref.
                      public var headRepositoryOwner: FeedItemFragment.AsMergedPullRequestFeedItem.PullRequest.HeadRepositoryOwner? { __data["headRepositoryOwner"] }
                      /// The repository associated with this pull request's base Ref.
                      public var baseRepository: FeedItemFragment.AsMergedPullRequestFeedItem.PullRequest.BaseRepository? { __data["baseRepository"] }
                      /// The actor who authored the comment.
                      public var author: FeedItemFragment.AsMergedPullRequestFeedItem.PullRequest.Author? { __data["author"] }
                      /// The body rendered to HTML.
                      public var bodyHTML: GitHubGraphQLAPI.HTML { __data["bodyHTML"] }
                      /// Identifies the pull request title rendered to HTML.
                      public var titleHTML: GitHubGraphQLAPI.HTML { __data["titleHTML"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
                      }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsPublishedReleaseFeedItem
                  ///
                  /// Parent Type: `PublishedReleaseFeedItem`
                  public struct AsPublishedReleaseFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.PublishedReleaseFeedItem }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedItemFragment.AsPublishedReleaseFeedItem.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }
                    /// The user who published the release
                    public var actor: Actor { __data["actor"] }
                    /// The release that was published
                    public var release: Release { __data["release"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsPublishedReleaseFeedItem.Actor
                    ///
                    /// Parent Type: `User`
                    public struct Actor: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                      /// The HTTP URL for this user
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                        public var userListItemFragment: UserListItemFragment { _toFragment() }
                      }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsPublishedReleaseFeedItem.Release
                    ///
                    /// Parent Type: `Release`
                    public struct Release: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Release }

                      /// The title of the release.
                      public var name: String? { __data["name"] }
                      /// The name of the release's Git tag
                      public var tagName: String { __data["tagName"] }
                      /// The description of this release rendered to HTML.
                      public var descriptionHTML: GitHubGraphQLAPI.HTML? { __data["descriptionHTML"] }
                      /// The HTTP URL for this issue
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }
                      /// The author of the release
                      public var author: Author? { __data["author"] }
                      /// The repository that the release belongs to.
                      public var repository: FeedReleaseFragment.Repository { __data["repository"] }
                      /// The linked discussion for this release
                      public var discussion: FeedReleaseFragment.Discussion? { __data["discussion"] }
                      /// A list of users mentioned in the release description
                      public var mentions: FeedReleaseFragment.Mentions? { __data["mentions"] }
                      /// The Node ID of this object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// Can user react to this subject
                      public var viewerCanReact: Bool { __data["viewerCanReact"] }
                      /// A list of reactions grouped by content left on the subject.
                      public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var releaseNameFragment: ReleaseNameFragment { _toFragment() }
                        public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
                        public var feedReleaseFragment: FeedReleaseFragment { _toFragment() }
                      }

                      /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsPublishedReleaseFeedItem.Release.Author
                      ///
                      /// Parent Type: `User`
                      public struct Author: GitHubGraphQLAPI.SelectionSet {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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

                          public var avatarFragment: AvatarFragment { _toFragment() }
                        }
                      }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsRepositoryRecommendationFeedItem
                  ///
                  /// Parent Type: `RepositoryRecommendationFeedItem`
                  public struct AsRepositoryRecommendationFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryRecommendationFeedItem }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedItemFragment.AsRepositoryRecommendationFeedItem.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }
                    /// The reason why the repository was recommended
                    public var reason: String { __data["reason"] }
                    /// The repository that is recommended
                    public var repository: Repository { __data["repository"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsRepositoryRecommendationFeedItem.Repository
                    ///
                    /// Parent Type: `Repository`
                    public struct Repository: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }

                      /// The Node ID of this object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// The primary language of the repository's code.
                      public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
                      /// The name of the repository.
                      public var name: String { __data["name"] }
                      /// The User owner of the repository.
                      public var owner: Owner { __data["owner"] }
                      /// A description of the repository, rendered to HTML without any links in it.
                      public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
                      /// The description of the repository rendered to HTML.
                      public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
                      /// Returns a count of how many stargazers there are on this object
                      public var stargazerCount: Int { __data["stargazerCount"] }
                      /// The repository parent, if this is a fork.
                      public var parent: RepositoryListItemFragment.Parent? { __data["parent"] }
                      /// Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
                      public var usesCustomOpenGraphImage: Bool { __data["usesCustomOpenGraphImage"] }
                      /// The image used to represent this repository in Open Graph data.
                      public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }
                      /// Returns a boolean indicating whether the viewing user has starred this starrable.
                      public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
                      /// Indicates if the repository has issues feature enabled.
                      public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
                      /// Are discussions available on this repository?
                      public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
                      /// Indicates if the repository is unmaintained.
                      public var isArchived: Bool { __data["isArchived"] }
                      /// A list of user-lists to which this repository belongs
                      public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }
                      /// The number of contributors to this repository
                      public var contributorsCount: Int { __data["contributorsCount"] }
                      /// The description of the repository.
                      public var description: String? { __data["description"] }
                      /// The HTTP URL for this repository
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
                        public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
                        public var feedRepoFragment: FeedRepoFragment { _toFragment() }
                      }

                      /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsRepositoryRecommendationFeedItem.Repository.Owner
                      ///
                      /// Parent Type: `RepositoryOwner`
                      public struct Owner: GitHubGraphQLAPI.SelectionSet {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }

                        /// The Node ID of the RepositoryOwner object
                        public var id: GitHubGraphQLAPI.ID { __data["id"] }
                        /// The username used to login.
                        public var login: String { __data["login"] }
                        /// The HTTP URL for the owner.
                        public var url: GitHubGraphQLAPI.URI { __data["url"] }

                        public var asActor: AsActor? { _asInlineFragment() }

                        /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsRepositoryRecommendationFeedItem.Repository.Owner.AsActor
                        ///
                        /// Parent Type: `Actor`
                        public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                          public let __data: DataDict
                          public init(_dataDict: DataDict) { __data = _dataDict }

                          public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsRepositoryRecommendationFeedItem.Repository.Owner
                          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
                          public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                            RepositoryListItemFragment.Owner.self,
                            FeedRepoFragment.Owner.self,
                            AvatarFragment.self,
                            RepositoryListItemFragment.Owner.AsActor.self
                          ] }

                          /// The Node ID of the RepositoryOwner object
                          public var id: GitHubGraphQLAPI.ID { __data["id"] }
                          /// The username used to login.
                          public var login: String { __data["login"] }
                          /// The HTTP URL for the owner.
                          public var url: GitHubGraphQLAPI.URI { __data["url"] }
                          /// A URL pointing to the actor's public avatar.
                          public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                          public struct Fragments: FragmentContainer {
                            public let __data: DataDict
                            public init(_dataDict: DataDict) { __data = _dataDict }

                            public var avatarFragment: AvatarFragment { _toFragment() }
                          }
                        }
                      }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsStarredRepositoryFeedItem
                  ///
                  /// Parent Type: `StarredRepositoryFeedItem`
                  public struct AsStarredRepositoryFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.StarredRepositoryFeedItem }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      FeedItemDisplayableFragment.self,
                      FeedItemFragment.AsFeedItemDisplayable.self,
                      FeedItemFragment.AsStarredRepositoryFeedItem.self,
                      FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.self
                    ] }

                    /// Identifies the date and time when the object was created.
                    public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                    /// A unique identifier for this item
                    public var identifier: String { __data["identifier"] }
                    /// Whether or not this item is dismissable
                    public var dismissable: Bool { __data["dismissable"] }
                    /// The user who starred the repository
                    public var actor: Actor { __data["actor"] }
                    /// The repository that was starred
                    public var repository: Repository { __data["repository"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                      public var feedItemFragment: FeedItemFragment { _toFragment() }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsStarredRepositoryFeedItem.Actor
                    ///
                    /// Parent Type: `User`
                    public struct Actor: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                      /// The HTTP URL for this user
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                        public var userListItemFragment: UserListItemFragment { _toFragment() }
                      }
                    }

                    /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsStarredRepositoryFeedItem.Repository
                    ///
                    /// Parent Type: `Repository`
                    public struct Repository: GitHubGraphQLAPI.SelectionSet {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }

                      /// The Node ID of this object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// The primary language of the repository's code.
                      public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
                      /// The name of the repository.
                      public var name: String { __data["name"] }
                      /// The User owner of the repository.
                      public var owner: Owner { __data["owner"] }
                      /// A description of the repository, rendered to HTML without any links in it.
                      public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
                      /// The description of the repository rendered to HTML.
                      public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
                      /// Returns a count of how many stargazers there are on this object
                      public var stargazerCount: Int { __data["stargazerCount"] }
                      /// The repository parent, if this is a fork.
                      public var parent: RepositoryListItemFragment.Parent? { __data["parent"] }
                      /// Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
                      public var usesCustomOpenGraphImage: Bool { __data["usesCustomOpenGraphImage"] }
                      /// The image used to represent this repository in Open Graph data.
                      public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }
                      /// Returns a boolean indicating whether the viewing user has starred this starrable.
                      public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
                      /// Indicates if the repository has issues feature enabled.
                      public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
                      /// Are discussions available on this repository?
                      public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
                      /// Indicates if the repository is unmaintained.
                      public var isArchived: Bool { __data["isArchived"] }
                      /// A list of user-lists to which this repository belongs
                      public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }
                      /// The number of contributors to this repository
                      public var contributorsCount: Int { __data["contributorsCount"] }
                      /// The description of the repository.
                      public var description: String? { __data["description"] }
                      /// The HTTP URL for this repository
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
                        public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
                        public var feedRepoFragment: FeedRepoFragment { _toFragment() }
                      }

                      /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsStarredRepositoryFeedItem.Repository.Owner
                      ///
                      /// Parent Type: `RepositoryOwner`
                      public struct Owner: GitHubGraphQLAPI.SelectionSet {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }

                        /// The Node ID of the RepositoryOwner object
                        public var id: GitHubGraphQLAPI.ID { __data["id"] }
                        /// The username used to login.
                        public var login: String { __data["login"] }
                        /// The HTTP URL for the owner.
                        public var url: GitHubGraphQLAPI.URI { __data["url"] }

                        public var asActor: AsActor? { _asInlineFragment() }

                        /// Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsStarredRepositoryFeedItem.Repository.Owner.AsActor
                        ///
                        /// Parent Type: `Actor`
                        public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                          public let __data: DataDict
                          public init(_dataDict: DataDict) { __data = _dataDict }

                          public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.RelatedItem.AsStarredRepositoryFeedItem.Repository.Owner
                          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
                          public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                            RepositoryListItemFragment.Owner.self,
                            FeedRepoFragment.Owner.self,
                            AvatarFragment.self,
                            RepositoryListItemFragment.Owner.AsActor.self
                          ] }

                          /// The Node ID of the RepositoryOwner object
                          public var id: GitHubGraphQLAPI.ID { __data["id"] }
                          /// The username used to login.
                          public var login: String { __data["login"] }
                          /// The HTTP URL for the owner.
                          public var url: GitHubGraphQLAPI.URI { __data["url"] }
                          /// A URL pointing to the actor's public avatar.
                          public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                          public struct Fragments: FragmentContainer {
                            public let __data: DataDict
                            public init(_dataDict: DataDict) { __data = _dataDict }

                            public var avatarFragment: AvatarFragment { _toFragment() }
                          }
                        }
                      }
                    }
                  }
                }
              }
              /// Viewer.Dashboard.Feed.Items.Node.AsCreatedDiscussionFeedItem
              ///
              /// Parent Type: `CreatedDiscussionFeedItem`
              public struct AsCreatedDiscussionFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.CreatedDiscussionFeedItem }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.self,
                  FeedItemDisplayableFragment.self,
                  FeedItemFragment.AsFeedItemDisplayable.self,
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.self,
                  FeedItemFragment.AsCreatedDiscussionFeedItem.self
                ] }

                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }
                /// Related items to this item.
                public var relatedItems: [AsFeedItemDisplayable.RelatedItem] { __data["relatedItems"] }
                /// The user who created the discussion
                public var actor: Actor { __data["actor"] }
                /// The discussion that was created
                public var discussion: Discussion { __data["discussion"] }
                /// The URL of the preview image for this item
                public var previewImageUrl: GitHubGraphQLAPI.URI? { __data["previewImageUrl"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsCreatedDiscussionFeedItem.Actor
                ///
                /// Parent Type: `User`
                public struct Actor: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                  /// The HTTP URL for this user
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var avatarFragment: AvatarFragment { _toFragment() }
                    public var userListItemFragment: UserListItemFragment { _toFragment() }
                  }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsCreatedDiscussionFeedItem.Discussion
                ///
                /// Parent Type: `Discussion`
                public struct Discussion: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Discussion }

                  /// The Node ID of this object
                  public var id: GitHubGraphQLAPI.ID { __data["id"] }
                  /// Can user react to this subject
                  public var viewerCanReact: Bool { __data["viewerCanReact"] }
                  /// A list of reactions grouped by content left on the subject.
                  public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }
                  /// The number identifying this discussion within the repository.
                  public var number: Int { __data["number"] }
                  /// The body rendered to HTML.
                  public var bodyHTML: GitHubGraphQLAPI.HTML { __data["bodyHTML"] }
                  /// The category for this discussion.
                  public var category: FeedItemFragment.AsCreatedDiscussionFeedItem.Discussion.Category { __data["category"] }
                  /// The title of this discussion.
                  public var title: String { __data["title"] }
                  /// The repository associated with this node.
                  public var repository: FeedItemFragment.AsCreatedDiscussionFeedItem.Discussion.Repository { __data["repository"] }
                  /// Number of upvotes that this subject has received.
                  public var upvoteCount: Int { __data["upvoteCount"] }
                  /// Whether or not the current user can add or remove an upvote on this subject.
                  public var viewerCanUpvote: Bool { __data["viewerCanUpvote"] }
                  /// Whether or not the current user has already upvoted this subject.
                  public var viewerHasUpvoted: Bool { __data["viewerHasUpvoted"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
                  }
                }
              }

              /// Viewer.Dashboard.Feed.Items.Node.AsCreatedRepositoryFeedItem
              ///
              /// Parent Type: `CreatedRepositoryFeedItem`
              public struct AsCreatedRepositoryFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.CreatedRepositoryFeedItem }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.self,
                  FeedItemDisplayableFragment.self,
                  FeedItemFragment.AsFeedItemDisplayable.self,
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.self,
                  FeedItemFragment.AsCreatedRepositoryFeedItem.self
                ] }

                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }
                /// Related items to this item.
                public var relatedItems: [AsFeedItemDisplayable.RelatedItem] { __data["relatedItems"] }
                /// The user who created the repository
                public var actor: Actor { __data["actor"] }
                /// The repository that was created
                public var repository: Repository { __data["repository"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsCreatedRepositoryFeedItem.Actor
                ///
                /// Parent Type: `User`
                public struct Actor: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                  /// The HTTP URL for this user
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var avatarFragment: AvatarFragment { _toFragment() }
                    public var userListItemFragment: UserListItemFragment { _toFragment() }
                  }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsCreatedRepositoryFeedItem.Repository
                ///
                /// Parent Type: `Repository`
                public struct Repository: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }

                  /// The Node ID of this object
                  public var id: GitHubGraphQLAPI.ID { __data["id"] }
                  /// The primary language of the repository's code.
                  public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
                  /// The name of the repository.
                  public var name: String { __data["name"] }
                  /// The User owner of the repository.
                  public var owner: Owner { __data["owner"] }
                  /// A description of the repository, rendered to HTML without any links in it.
                  public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
                  /// The description of the repository rendered to HTML.
                  public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
                  /// Returns a count of how many stargazers there are on this object
                  public var stargazerCount: Int { __data["stargazerCount"] }
                  /// The repository parent, if this is a fork.
                  public var parent: RepositoryListItemFragment.Parent? { __data["parent"] }
                  /// Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
                  public var usesCustomOpenGraphImage: Bool { __data["usesCustomOpenGraphImage"] }
                  /// The image used to represent this repository in Open Graph data.
                  public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }
                  /// Returns a boolean indicating whether the viewing user has starred this starrable.
                  public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
                  /// Indicates if the repository has issues feature enabled.
                  public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
                  /// Are discussions available on this repository?
                  public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
                  /// Indicates if the repository is unmaintained.
                  public var isArchived: Bool { __data["isArchived"] }
                  /// A list of user-lists to which this repository belongs
                  public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }
                  /// The number of contributors to this repository
                  public var contributorsCount: Int { __data["contributorsCount"] }
                  /// The description of the repository.
                  public var description: String? { __data["description"] }
                  /// The HTTP URL for this repository
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
                    public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
                    public var feedRepoFragment: FeedRepoFragment { _toFragment() }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsCreatedRepositoryFeedItem.Repository.Owner
                  ///
                  /// Parent Type: `RepositoryOwner`
                  public struct Owner: GitHubGraphQLAPI.SelectionSet {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }

                    /// The Node ID of the RepositoryOwner object
                    public var id: GitHubGraphQLAPI.ID { __data["id"] }
                    /// The username used to login.
                    public var login: String { __data["login"] }
                    /// The HTTP URL for the owner.
                    public var url: GitHubGraphQLAPI.URI { __data["url"] }

                    public var asActor: AsActor? { _asInlineFragment() }

                    /// Viewer.Dashboard.Feed.Items.Node.AsCreatedRepositoryFeedItem.Repository.Owner.AsActor
                    ///
                    /// Parent Type: `Actor`
                    public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsCreatedRepositoryFeedItem.Repository.Owner
                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
                      public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                        RepositoryListItemFragment.Owner.self,
                        FeedRepoFragment.Owner.self,
                        AvatarFragment.self,
                        RepositoryListItemFragment.Owner.AsActor.self
                      ] }

                      /// The Node ID of the RepositoryOwner object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// The username used to login.
                      public var login: String { __data["login"] }
                      /// The HTTP URL for the owner.
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }
                      /// A URL pointing to the actor's public avatar.
                      public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                      }
                    }
                  }
                }
              }

              /// Viewer.Dashboard.Feed.Items.Node.AsFollowRecommendationFeedItem
              ///
              /// Parent Type: `FollowRecommendationFeedItem`
              public struct AsFollowRecommendationFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.FollowRecommendationFeedItem }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.self,
                  FeedItemDisplayableFragment.self,
                  FeedItemFragment.AsFeedItemDisplayable.self,
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.self,
                  FeedItemFragment.AsFollowRecommendationFeedItem.self
                ] }

                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }
                /// Related items to this item.
                public var relatedItems: [AsFeedItemDisplayable.RelatedItem] { __data["relatedItems"] }
                /// The reason why the user or organization was recommended
                public var reason: String { __data["reason"] }
                /// The user or organization that is recommended to follow
                public var followee: Followee { __data["followee"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsFollowRecommendationFeedItem.Followee
                ///
                /// Parent Type: `Followable`
                public struct Followee: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.Followable }

                  public var asUser: AsUser? { _asInlineFragment() }
                  public var asOrganization: AsOrganization? { _asInlineFragment() }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFollowRecommendationFeedItem.Followee.AsUser
                  ///
                  /// Parent Type: `User`
                  public struct AsUser: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFollowRecommendationFeedItem.Followee
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      UserListItemFragment.self,
                      AvatarFragment.self,
                      FeedItemFragment.AsFollowRecommendationFeedItem.Followee.AsUser.self
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
                    /// The HTTP URL for this user
                    public var url: GitHubGraphQLAPI.URI { __data["url"] }
                    /// Repositories the user has starred.
                    public var starredRepositories: FeedItemFragment.AsFollowRecommendationFeedItem.Followee.AsUser.StarredRepositories { __data["starredRepositories"] }
                    /// A list of repositories that the user owns.
                    public var repositories: FeedItemFragment.AsFollowRecommendationFeedItem.Followee.AsUser.Repositories { __data["repositories"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var avatarFragment: AvatarFragment { _toFragment() }
                      public var userListItemFragment: UserListItemFragment { _toFragment() }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFollowRecommendationFeedItem.Followee.AsOrganization
                  ///
                  /// Parent Type: `Organization`
                  public struct AsOrganization: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFollowRecommendationFeedItem.Followee
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Organization }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      OrganizationListItemFragment.self,
                      AvatarFragment.self,
                      FeedItemFragment.AsFollowRecommendationFeedItem.Followee.AsOrganization.self
                    ] }

                    /// The Node ID of this object
                    public var id: GitHubGraphQLAPI.ID { __data["id"] }
                    /// The organization's public profile description rendered to HTML.
                    public var descriptionHTML: String? { __data["descriptionHTML"] }
                    /// The organization's public profile name.
                    public var name: String? { __data["name"] }
                    /// The organization's login name.
                    public var login: String { __data["login"] }
                    /// Whether or not this Organization is followed by the viewer.
                    public var viewerIsFollowing: Bool { __data["viewerIsFollowing"] }
                    /// The HTTP URL for this organization.
                    public var url: GitHubGraphQLAPI.URI { __data["url"] }
                    /// A URL pointing to the actor's public avatar.
                    public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var avatarFragment: AvatarFragment { _toFragment() }
                      public var organizationListItemFragment: OrganizationListItemFragment { _toFragment() }
                    }
                  }
                }
              }

              /// Viewer.Dashboard.Feed.Items.Node.AsFollowedUserFeedItem
              ///
              /// Parent Type: `FollowedUserFeedItem`
              public struct AsFollowedUserFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.FollowedUserFeedItem }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.self,
                  FeedItemDisplayableFragment.self,
                  FeedItemFragment.AsFeedItemDisplayable.self,
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.self,
                  FeedItemFragment.AsFollowedUserFeedItem.self
                ] }

                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }
                /// Related items to this item.
                public var relatedItems: [AsFeedItemDisplayable.RelatedItem] { __data["relatedItems"] }
                /// The entity that was followed
                public var followee: Followee { __data["followee"] }
                /// The user who performed the follow action
                public var follower: Follower { __data["follower"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsFollowedUserFeedItem.Followee
                ///
                /// Parent Type: `Followable`
                public struct Followee: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.Followable }

                  public var asUser: AsUser? { _asInlineFragment() }
                  public var asOrganization: AsOrganization? { _asInlineFragment() }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFollowedUserFeedItem.Followee.AsUser
                  ///
                  /// Parent Type: `User`
                  public struct AsUser: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFollowedUserFeedItem.Followee
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      UserListItemFragment.self,
                      AvatarFragment.self,
                      FeedItemFragment.AsFollowedUserFeedItem.Followee.AsUser.self
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
                    /// The HTTP URL for this user
                    public var url: GitHubGraphQLAPI.URI { __data["url"] }
                    /// Repositories the user has starred.
                    public var starredRepositories: FeedItemFragment.AsFollowedUserFeedItem.Followee.AsUser.StarredRepositories { __data["starredRepositories"] }
                    /// A list of repositories that the user owns.
                    public var repositories: FeedItemFragment.AsFollowedUserFeedItem.Followee.AsUser.Repositories { __data["repositories"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var avatarFragment: AvatarFragment { _toFragment() }
                      public var userListItemFragment: UserListItemFragment { _toFragment() }
                    }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsFollowedUserFeedItem.Followee.AsOrganization
                  ///
                  /// Parent Type: `Organization`
                  public struct AsOrganization: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFollowedUserFeedItem.Followee
                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Organization }
                    public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                      OrganizationListItemFragment.self,
                      AvatarFragment.self,
                      FeedItemFragment.AsFollowedUserFeedItem.Followee.AsOrganization.self
                    ] }

                    /// The Node ID of this object
                    public var id: GitHubGraphQLAPI.ID { __data["id"] }
                    /// The organization's public profile description rendered to HTML.
                    public var descriptionHTML: String? { __data["descriptionHTML"] }
                    /// The organization's public profile name.
                    public var name: String? { __data["name"] }
                    /// The organization's login name.
                    public var login: String { __data["login"] }
                    /// Whether or not this Organization is followed by the viewer.
                    public var viewerIsFollowing: Bool { __data["viewerIsFollowing"] }
                    /// The HTTP URL for this organization.
                    public var url: GitHubGraphQLAPI.URI { __data["url"] }
                    /// A URL pointing to the actor's public avatar.
                    public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                    public struct Fragments: FragmentContainer {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public var avatarFragment: AvatarFragment { _toFragment() }
                      public var organizationListItemFragment: OrganizationListItemFragment { _toFragment() }
                    }
                  }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsFollowedUserFeedItem.Follower
                ///
                /// Parent Type: `User`
                public struct Follower: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                  /// The HTTP URL for this user
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var avatarFragment: AvatarFragment { _toFragment() }
                    public var userListItemFragment: UserListItemFragment { _toFragment() }
                  }
                }
              }

              /// Viewer.Dashboard.Feed.Items.Node.AsForkedRepositoryFeedItem
              ///
              /// Parent Type: `ForkedRepositoryFeedItem`
              public struct AsForkedRepositoryFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.ForkedRepositoryFeedItem }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.self,
                  FeedItemDisplayableFragment.self,
                  FeedItemFragment.AsFeedItemDisplayable.self,
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.self,
                  FeedItemFragment.AsForkedRepositoryFeedItem.self
                ] }

                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }
                /// Related items to this item.
                public var relatedItems: [AsFeedItemDisplayable.RelatedItem] { __data["relatedItems"] }
                /// The user who forked the repository
                public var actor: Actor { __data["actor"] }
                /// The repository that was forked
                public var repository: Repository { __data["repository"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsForkedRepositoryFeedItem.Actor
                ///
                /// Parent Type: `User`
                public struct Actor: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                  /// The HTTP URL for this user
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var avatarFragment: AvatarFragment { _toFragment() }
                    public var userListItemFragment: UserListItemFragment { _toFragment() }
                  }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsForkedRepositoryFeedItem.Repository
                ///
                /// Parent Type: `Repository`
                public struct Repository: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }

                  /// The Node ID of this object
                  public var id: GitHubGraphQLAPI.ID { __data["id"] }
                  /// The primary language of the repository's code.
                  public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
                  /// The name of the repository.
                  public var name: String { __data["name"] }
                  /// The User owner of the repository.
                  public var owner: Owner { __data["owner"] }
                  /// A description of the repository, rendered to HTML without any links in it.
                  public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
                  /// The description of the repository rendered to HTML.
                  public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
                  /// Returns a count of how many stargazers there are on this object
                  public var stargazerCount: Int { __data["stargazerCount"] }
                  /// The repository parent, if this is a fork.
                  public var parent: RepositoryListItemFragment.Parent? { __data["parent"] }
                  /// Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
                  public var usesCustomOpenGraphImage: Bool { __data["usesCustomOpenGraphImage"] }
                  /// The image used to represent this repository in Open Graph data.
                  public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }
                  /// Returns a boolean indicating whether the viewing user has starred this starrable.
                  public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
                  /// Indicates if the repository has issues feature enabled.
                  public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
                  /// Are discussions available on this repository?
                  public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
                  /// Indicates if the repository is unmaintained.
                  public var isArchived: Bool { __data["isArchived"] }
                  /// A list of user-lists to which this repository belongs
                  public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }
                  /// The number of contributors to this repository
                  public var contributorsCount: Int { __data["contributorsCount"] }
                  /// The description of the repository.
                  public var description: String? { __data["description"] }
                  /// The HTTP URL for this repository
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
                    public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
                    public var feedRepoFragment: FeedRepoFragment { _toFragment() }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsForkedRepositoryFeedItem.Repository.Owner
                  ///
                  /// Parent Type: `RepositoryOwner`
                  public struct Owner: GitHubGraphQLAPI.SelectionSet {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }

                    /// The Node ID of the RepositoryOwner object
                    public var id: GitHubGraphQLAPI.ID { __data["id"] }
                    /// The username used to login.
                    public var login: String { __data["login"] }
                    /// The HTTP URL for the owner.
                    public var url: GitHubGraphQLAPI.URI { __data["url"] }

                    public var asActor: AsActor? { _asInlineFragment() }

                    /// Viewer.Dashboard.Feed.Items.Node.AsForkedRepositoryFeedItem.Repository.Owner.AsActor
                    ///
                    /// Parent Type: `Actor`
                    public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsForkedRepositoryFeedItem.Repository.Owner
                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
                      public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                        RepositoryListItemFragment.Owner.self,
                        FeedRepoFragment.Owner.self,
                        AvatarFragment.self,
                        RepositoryListItemFragment.Owner.AsActor.self
                      ] }

                      /// The Node ID of the RepositoryOwner object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// The username used to login.
                      public var login: String { __data["login"] }
                      /// The HTTP URL for the owner.
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }
                      /// A URL pointing to the actor's public avatar.
                      public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                      }
                    }
                  }
                }
              }

              /// Viewer.Dashboard.Feed.Items.Node.AsMergedPullRequestFeedItem
              ///
              /// Parent Type: `MergedPullRequestFeedItem`
              public struct AsMergedPullRequestFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.MergedPullRequestFeedItem }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.self,
                  FeedItemDisplayableFragment.self,
                  FeedItemFragment.AsFeedItemDisplayable.self,
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.self,
                  FeedItemFragment.AsMergedPullRequestFeedItem.self
                ] }

                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }
                /// Related items to this item.
                public var relatedItems: [AsFeedItemDisplayable.RelatedItem] { __data["relatedItems"] }
                /// The author of the pull request
                public var actor: Actor { __data["actor"] }
                /// The pull request that was merged
                public var pullRequest: PullRequest { __data["pullRequest"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsMergedPullRequestFeedItem.Actor
                ///
                /// Parent Type: `User`
                public struct Actor: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                  /// The HTTP URL for this user
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var avatarFragment: AvatarFragment { _toFragment() }
                    public var userListItemFragment: UserListItemFragment { _toFragment() }
                  }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsMergedPullRequestFeedItem.PullRequest
                ///
                /// Parent Type: `PullRequest`
                public struct PullRequest: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.PullRequest }

                  /// The Node ID of this object
                  public var id: GitHubGraphQLAPI.ID { __data["id"] }
                  /// Can user react to this subject
                  public var viewerCanReact: Bool { __data["viewerCanReact"] }
                  /// A list of reactions grouped by content left on the subject.
                  public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }
                  /// Identifies the state of the pull request.
                  public var state: GraphQLEnum<GitHubGraphQLAPI.PullRequestState> { __data["state"] }
                  /// Identifies the name of the base Ref associated with the pull request, even if the ref has been deleted.
                  public var baseRefName: String { __data["baseRefName"] }
                  /// Identifies the name of the head Ref associated with the pull request, even if the ref has been deleted.
                  public var headRefName: String { __data["headRefName"] }
                  /// The HTTP URL for this pull request.
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }
                  /// Identifies the pull request number.
                  public var number: Int { __data["number"] }
                  /// The owner of the repository associated with this pull request's head Ref.
                  public var headRepositoryOwner: FeedItemFragment.AsMergedPullRequestFeedItem.PullRequest.HeadRepositoryOwner? { __data["headRepositoryOwner"] }
                  /// The repository associated with this pull request's base Ref.
                  public var baseRepository: FeedItemFragment.AsMergedPullRequestFeedItem.PullRequest.BaseRepository? { __data["baseRepository"] }
                  /// The actor who authored the comment.
                  public var author: FeedItemFragment.AsMergedPullRequestFeedItem.PullRequest.Author? { __data["author"] }
                  /// The body rendered to HTML.
                  public var bodyHTML: GitHubGraphQLAPI.HTML { __data["bodyHTML"] }
                  /// Identifies the pull request title rendered to HTML.
                  public var titleHTML: GitHubGraphQLAPI.HTML { __data["titleHTML"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
                  }
                }
              }

              /// Viewer.Dashboard.Feed.Items.Node.AsPublishedReleaseFeedItem
              ///
              /// Parent Type: `PublishedReleaseFeedItem`
              public struct AsPublishedReleaseFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.PublishedReleaseFeedItem }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.self,
                  FeedItemDisplayableFragment.self,
                  FeedItemFragment.AsFeedItemDisplayable.self,
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.self,
                  FeedItemFragment.AsPublishedReleaseFeedItem.self
                ] }

                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }
                /// Related items to this item.
                public var relatedItems: [AsFeedItemDisplayable.RelatedItem] { __data["relatedItems"] }
                /// The user who published the release
                public var actor: Actor { __data["actor"] }
                /// The release that was published
                public var release: Release { __data["release"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsPublishedReleaseFeedItem.Actor
                ///
                /// Parent Type: `User`
                public struct Actor: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                  /// The HTTP URL for this user
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var avatarFragment: AvatarFragment { _toFragment() }
                    public var userListItemFragment: UserListItemFragment { _toFragment() }
                  }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsPublishedReleaseFeedItem.Release
                ///
                /// Parent Type: `Release`
                public struct Release: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Release }

                  /// The title of the release.
                  public var name: String? { __data["name"] }
                  /// The name of the release's Git tag
                  public var tagName: String { __data["tagName"] }
                  /// The description of this release rendered to HTML.
                  public var descriptionHTML: GitHubGraphQLAPI.HTML? { __data["descriptionHTML"] }
                  /// The HTTP URL for this issue
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }
                  /// The author of the release
                  public var author: Author? { __data["author"] }
                  /// The repository that the release belongs to.
                  public var repository: FeedReleaseFragment.Repository { __data["repository"] }
                  /// The linked discussion for this release
                  public var discussion: FeedReleaseFragment.Discussion? { __data["discussion"] }
                  /// A list of users mentioned in the release description
                  public var mentions: FeedReleaseFragment.Mentions? { __data["mentions"] }
                  /// The Node ID of this object
                  public var id: GitHubGraphQLAPI.ID { __data["id"] }
                  /// Can user react to this subject
                  public var viewerCanReact: Bool { __data["viewerCanReact"] }
                  /// A list of reactions grouped by content left on the subject.
                  public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var releaseNameFragment: ReleaseNameFragment { _toFragment() }
                    public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
                    public var feedReleaseFragment: FeedReleaseFragment { _toFragment() }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsPublishedReleaseFeedItem.Release.Author
                  ///
                  /// Parent Type: `User`
                  public struct Author: GitHubGraphQLAPI.SelectionSet {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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

                      public var avatarFragment: AvatarFragment { _toFragment() }
                    }
                  }
                }
              }

              /// Viewer.Dashboard.Feed.Items.Node.AsRepositoryRecommendationFeedItem
              ///
              /// Parent Type: `RepositoryRecommendationFeedItem`
              public struct AsRepositoryRecommendationFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryRecommendationFeedItem }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.self,
                  FeedItemDisplayableFragment.self,
                  FeedItemFragment.AsFeedItemDisplayable.self,
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.self,
                  FeedItemFragment.AsRepositoryRecommendationFeedItem.self
                ] }

                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }
                /// Related items to this item.
                public var relatedItems: [AsFeedItemDisplayable.RelatedItem] { __data["relatedItems"] }
                /// The reason why the repository was recommended
                public var reason: String { __data["reason"] }
                /// The repository that is recommended
                public var repository: Repository { __data["repository"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsRepositoryRecommendationFeedItem.Repository
                ///
                /// Parent Type: `Repository`
                public struct Repository: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }

                  /// The Node ID of this object
                  public var id: GitHubGraphQLAPI.ID { __data["id"] }
                  /// The primary language of the repository's code.
                  public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
                  /// The name of the repository.
                  public var name: String { __data["name"] }
                  /// The User owner of the repository.
                  public var owner: Owner { __data["owner"] }
                  /// A description of the repository, rendered to HTML without any links in it.
                  public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
                  /// The description of the repository rendered to HTML.
                  public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
                  /// Returns a count of how many stargazers there are on this object
                  public var stargazerCount: Int { __data["stargazerCount"] }
                  /// The repository parent, if this is a fork.
                  public var parent: RepositoryListItemFragment.Parent? { __data["parent"] }
                  /// Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
                  public var usesCustomOpenGraphImage: Bool { __data["usesCustomOpenGraphImage"] }
                  /// The image used to represent this repository in Open Graph data.
                  public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }
                  /// Returns a boolean indicating whether the viewing user has starred this starrable.
                  public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
                  /// Indicates if the repository has issues feature enabled.
                  public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
                  /// Are discussions available on this repository?
                  public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
                  /// Indicates if the repository is unmaintained.
                  public var isArchived: Bool { __data["isArchived"] }
                  /// A list of user-lists to which this repository belongs
                  public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }
                  /// The number of contributors to this repository
                  public var contributorsCount: Int { __data["contributorsCount"] }
                  /// The description of the repository.
                  public var description: String? { __data["description"] }
                  /// The HTTP URL for this repository
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
                    public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
                    public var feedRepoFragment: FeedRepoFragment { _toFragment() }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsRepositoryRecommendationFeedItem.Repository.Owner
                  ///
                  /// Parent Type: `RepositoryOwner`
                  public struct Owner: GitHubGraphQLAPI.SelectionSet {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }

                    /// The Node ID of the RepositoryOwner object
                    public var id: GitHubGraphQLAPI.ID { __data["id"] }
                    /// The username used to login.
                    public var login: String { __data["login"] }
                    /// The HTTP URL for the owner.
                    public var url: GitHubGraphQLAPI.URI { __data["url"] }

                    public var asActor: AsActor? { _asInlineFragment() }

                    /// Viewer.Dashboard.Feed.Items.Node.AsRepositoryRecommendationFeedItem.Repository.Owner.AsActor
                    ///
                    /// Parent Type: `Actor`
                    public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsRepositoryRecommendationFeedItem.Repository.Owner
                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
                      public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                        RepositoryListItemFragment.Owner.self,
                        FeedRepoFragment.Owner.self,
                        AvatarFragment.self,
                        RepositoryListItemFragment.Owner.AsActor.self
                      ] }

                      /// The Node ID of the RepositoryOwner object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// The username used to login.
                      public var login: String { __data["login"] }
                      /// The HTTP URL for the owner.
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }
                      /// A URL pointing to the actor's public avatar.
                      public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                      }
                    }
                  }
                }
              }

              /// Viewer.Dashboard.Feed.Items.Node.AsStarredRepositoryFeedItem
              ///
              /// Parent Type: `StarredRepositoryFeedItem`
              public struct AsStarredRepositoryFeedItem: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                public let __data: DataDict
                public init(_dataDict: DataDict) { __data = _dataDict }

                public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node
                public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.StarredRepositoryFeedItem }
                public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.self,
                  FeedItemDisplayableFragment.self,
                  FeedItemFragment.AsFeedItemDisplayable.self,
                  FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsFeedItemDisplayable.self,
                  FeedItemFragment.AsStarredRepositoryFeedItem.self
                ] }

                /// Identifies the date and time when the object was created.
                public var createdAt: GitHubGraphQLAPI.DateTime { __data["createdAt"] }
                /// A unique identifier for this item
                public var identifier: String { __data["identifier"] }
                /// Whether or not this item is dismissable
                public var dismissable: Bool { __data["dismissable"] }
                /// Related items to this item.
                public var relatedItems: [AsFeedItemDisplayable.RelatedItem] { __data["relatedItems"] }
                /// The user who starred the repository
                public var actor: Actor { __data["actor"] }
                /// The repository that was starred
                public var repository: Repository { __data["repository"] }

                public struct Fragments: FragmentContainer {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public var feedItemFragment: FeedItemFragment { _toFragment() }
                  public var feedItemDisplayableFragment: FeedItemDisplayableFragment { _toFragment() }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsStarredRepositoryFeedItem.Actor
                ///
                /// Parent Type: `User`
                public struct Actor: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }

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
                  /// The HTTP URL for this user
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var avatarFragment: AvatarFragment { _toFragment() }
                    public var userListItemFragment: UserListItemFragment { _toFragment() }
                  }
                }

                /// Viewer.Dashboard.Feed.Items.Node.AsStarredRepositoryFeedItem.Repository
                ///
                /// Parent Type: `Repository`
                public struct Repository: GitHubGraphQLAPI.SelectionSet {
                  public let __data: DataDict
                  public init(_dataDict: DataDict) { __data = _dataDict }

                  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }

                  /// The Node ID of this object
                  public var id: GitHubGraphQLAPI.ID { __data["id"] }
                  /// The primary language of the repository's code.
                  public var primaryLanguage: RepositoryListItemFragment.PrimaryLanguage? { __data["primaryLanguage"] }
                  /// The name of the repository.
                  public var name: String { __data["name"] }
                  /// The User owner of the repository.
                  public var owner: Owner { __data["owner"] }
                  /// A description of the repository, rendered to HTML without any links in it.
                  public var shortDescriptionHTML: GitHubGraphQLAPI.HTML { __data["shortDescriptionHTML"] }
                  /// The description of the repository rendered to HTML.
                  public var descriptionHTML: GitHubGraphQLAPI.HTML { __data["descriptionHTML"] }
                  /// Returns a count of how many stargazers there are on this object
                  public var stargazerCount: Int { __data["stargazerCount"] }
                  /// The repository parent, if this is a fork.
                  public var parent: RepositoryListItemFragment.Parent? { __data["parent"] }
                  /// Whether this repository has a custom image to use with Open Graph as opposed to being represented by the owner's avatar.
                  public var usesCustomOpenGraphImage: Bool { __data["usesCustomOpenGraphImage"] }
                  /// The image used to represent this repository in Open Graph data.
                  public var openGraphImageUrl: GitHubGraphQLAPI.URI { __data["openGraphImageUrl"] }
                  /// Returns a boolean indicating whether the viewing user has starred this starrable.
                  public var viewerHasStarred: Bool { __data["viewerHasStarred"] }
                  /// Indicates if the repository has issues feature enabled.
                  public var hasIssuesEnabled: Bool { __data["hasIssuesEnabled"] }
                  /// Are discussions available on this repository?
                  public var isDiscussionsEnabled: Bool { __data["isDiscussionsEnabled"] }
                  /// Indicates if the repository is unmaintained.
                  public var isArchived: Bool { __data["isArchived"] }
                  /// A list of user-lists to which this repository belongs
                  public var lists: UserListMetadataForRepositoryFragment.Lists { __data["lists"] }
                  /// The number of contributors to this repository
                  public var contributorsCount: Int { __data["contributorsCount"] }
                  /// The description of the repository.
                  public var description: String? { __data["description"] }
                  /// The HTTP URL for this repository
                  public var url: GitHubGraphQLAPI.URI { __data["url"] }

                  public struct Fragments: FragmentContainer {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
                    public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
                    public var feedRepoFragment: FeedRepoFragment { _toFragment() }
                  }

                  /// Viewer.Dashboard.Feed.Items.Node.AsStarredRepositoryFeedItem.Repository.Owner
                  ///
                  /// Parent Type: `RepositoryOwner`
                  public struct Owner: GitHubGraphQLAPI.SelectionSet {
                    public let __data: DataDict
                    public init(_dataDict: DataDict) { __data = _dataDict }

                    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }

                    /// The Node ID of the RepositoryOwner object
                    public var id: GitHubGraphQLAPI.ID { __data["id"] }
                    /// The username used to login.
                    public var login: String { __data["login"] }
                    /// The HTTP URL for the owner.
                    public var url: GitHubGraphQLAPI.URI { __data["url"] }

                    public var asActor: AsActor? { _asInlineFragment() }

                    /// Viewer.Dashboard.Feed.Items.Node.AsStarredRepositoryFeedItem.Repository.Owner.AsActor
                    ///
                    /// Parent Type: `Actor`
                    public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
                      public let __data: DataDict
                      public init(_dataDict: DataDict) { __data = _dataDict }

                      public typealias RootEntityType = FeedQuery.Data.Viewer.Dashboard.Feed.Items.Node.AsStarredRepositoryFeedItem.Repository.Owner
                      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
                      public static var __mergedSources: [any ApolloAPI.SelectionSet.Type] { [
                        RepositoryListItemFragment.Owner.self,
                        FeedRepoFragment.Owner.self,
                        AvatarFragment.self,
                        RepositoryListItemFragment.Owner.AsActor.self
                      ] }

                      /// The Node ID of the RepositoryOwner object
                      public var id: GitHubGraphQLAPI.ID { __data["id"] }
                      /// The username used to login.
                      public var login: String { __data["login"] }
                      /// The HTTP URL for the owner.
                      public var url: GitHubGraphQLAPI.URI { __data["url"] }
                      /// A URL pointing to the actor's public avatar.
                      public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }

                      public struct Fragments: FragmentContainer {
                        public let __data: DataDict
                        public init(_dataDict: DataDict) { __data = _dataDict }

                        public var avatarFragment: AvatarFragment { _toFragment() }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
