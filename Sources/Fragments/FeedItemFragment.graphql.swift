// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public struct FeedItemFragment: GitHubGraphQLAPI.SelectionSet, Fragment {
  public static var fragmentDefinition: StaticString {
    #"fragment FeedItemFragment on FeedItem { __typename ...FeedItemDisplayableFragment ... on CreatedDiscussionFeedItem { actor { __typename ...UserListItemFragment url } discussion { __typename id number ...ReactionFieldsFragment bodyHTML category { __typename id supportsAnnouncements } title repository { __typename id url owner { __typename id login url ...AvatarFragment ... on Organization { id name } ... on User { id name } } name } upvoteCount viewerCanUpvote viewerHasUpvoted } previewImageUrl } ... on CreatedRepositoryFeedItem { actor { __typename ...UserListItemFragment url } repository { __typename ...FeedRepoFragment } } ... on FollowRecommendationFeedItem { reason followee { __typename ...UserListItemFragment ... on User { id url starredRepositories { __typename totalCount } repositories { __typename totalCount } } ...OrganizationListItemFragment } } ... on FollowedUserFeedItem { followee { __typename ... on User { id url starredRepositories { __typename totalCount } repositories { __typename totalCount } } ...UserListItemFragment ...OrganizationListItemFragment } follower { __typename ...UserListItemFragment ... on User { id bioHTML url } } } ... on ForkedRepositoryFeedItem { actor { __typename ...UserListItemFragment url } repository { __typename ...FeedRepoFragment } } ... on MergedPullRequestFeedItem { actor { __typename ...UserListItemFragment url } pullRequest { __typename id state baseRefName headRefName url number headRepositoryOwner { __typename id login } ...ReactionFieldsFragment baseRepository { __typename id url owner { __typename ...ActorFieldsFragment } name } author { __typename ...UserListItemFragment url } bodyHTML titleHTML } } ... on PublishedReleaseFeedItem { actor { __typename ...UserListItemFragment url } release { __typename id ...FeedReleaseFragment } } ... on RepositoryRecommendationFeedItem { reason repository { __typename ...FeedRepoFragment } } ... on StarredRepositoryFeedItem { actor { __typename ...UserListItemFragment url } repository { __typename ...FeedRepoFragment } } }"#
  }

  public let __data: DataDict
  public init(_dataDict: DataDict) { __data = _dataDict }

  public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.FeedItem }
  public static var __selections: [ApolloAPI.Selection] { [
    .field("__typename", String.self),
    .inlineFragment(AsFeedItemDisplayable.self),
    .inlineFragment(AsCreatedDiscussionFeedItem.self),
    .inlineFragment(AsCreatedRepositoryFeedItem.self),
    .inlineFragment(AsFollowRecommendationFeedItem.self),
    .inlineFragment(AsFollowedUserFeedItem.self),
    .inlineFragment(AsForkedRepositoryFeedItem.self),
    .inlineFragment(AsMergedPullRequestFeedItem.self),
    .inlineFragment(AsPublishedReleaseFeedItem.self),
    .inlineFragment(AsRepositoryRecommendationFeedItem.self),
    .inlineFragment(AsStarredRepositoryFeedItem.self),
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

  /// AsFeedItemDisplayable
  ///
  /// Parent Type: `FeedItemDisplayable`
  public struct AsFeedItemDisplayable: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.FeedItemDisplayable }
    public static var __selections: [ApolloAPI.Selection] { [
      .fragment(FeedItemDisplayableFragment.self),
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
    }
  }

  /// AsCreatedDiscussionFeedItem
  ///
  /// Parent Type: `CreatedDiscussionFeedItem`
  public struct AsCreatedDiscussionFeedItem: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.CreatedDiscussionFeedItem }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("actor", Actor.self),
      .field("discussion", Discussion.self),
      .field("previewImageUrl", GitHubGraphQLAPI.URI?.self),
    ] }

    /// The user who created the discussion
    public var actor: Actor { __data["actor"] }
    /// The discussion that was created
    public var discussion: Discussion { __data["discussion"] }
    /// The URL of the preview image for this item
    public var previewImageUrl: GitHubGraphQLAPI.URI? { __data["previewImageUrl"] }
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
    }

    /// AsCreatedDiscussionFeedItem.Actor
    ///
    /// Parent Type: `User`
    public struct Actor: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("url", GitHubGraphQLAPI.URI.self),
        .fragment(UserListItemFragment.self),
      ] }

      /// The HTTP URL for this user
      public var url: GitHubGraphQLAPI.URI { __data["url"] }
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

    /// AsCreatedDiscussionFeedItem.Discussion
    ///
    /// Parent Type: `Discussion`
    public struct Discussion: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Discussion }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("number", Int.self),
        .field("bodyHTML", GitHubGraphQLAPI.HTML.self),
        .field("category", Category.self),
        .field("title", String.self),
        .field("repository", Repository.self),
        .field("upvoteCount", Int.self),
        .field("viewerCanUpvote", Bool.self),
        .field("viewerHasUpvoted", Bool.self),
        .fragment(ReactionFieldsFragment.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The number identifying this discussion within the repository.
      public var number: Int { __data["number"] }
      /// The body rendered to HTML.
      public var bodyHTML: GitHubGraphQLAPI.HTML { __data["bodyHTML"] }
      /// The category for this discussion.
      public var category: Category { __data["category"] }
      /// The title of this discussion.
      public var title: String { __data["title"] }
      /// The repository associated with this node.
      public var repository: Repository { __data["repository"] }
      /// Number of upvotes that this subject has received.
      public var upvoteCount: Int { __data["upvoteCount"] }
      /// Whether or not the current user can add or remove an upvote on this subject.
      public var viewerCanUpvote: Bool { __data["viewerCanUpvote"] }
      /// Whether or not the current user has already upvoted this subject.
      public var viewerHasUpvoted: Bool { __data["viewerHasUpvoted"] }
      /// Can user react to this subject
      public var viewerCanReact: Bool { __data["viewerCanReact"] }
      /// A list of reactions grouped by content left on the subject.
      public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
      }

      /// AsCreatedDiscussionFeedItem.Discussion.Category
      ///
      /// Parent Type: `DiscussionCategory`
      public struct Category: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.DiscussionCategory }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("supportsAnnouncements", Bool.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// Indicates if this category supports announcements.
        public var supportsAnnouncements: Bool { __data["supportsAnnouncements"] }
      }

      /// AsCreatedDiscussionFeedItem.Discussion.Repository
      ///
      /// Parent Type: `Repository`
      public struct Repository: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("url", GitHubGraphQLAPI.URI.self),
          .field("owner", Owner.self),
          .field("name", String.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The HTTP URL for this repository
        public var url: GitHubGraphQLAPI.URI { __data["url"] }
        /// The User owner of the repository.
        public var owner: Owner { __data["owner"] }
        /// The name of the repository.
        public var name: String { __data["name"] }

        /// AsCreatedDiscussionFeedItem.Discussion.Repository.Owner
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
            .field("url", GitHubGraphQLAPI.URI.self),
            .inlineFragment(AsActor.self),
            .inlineFragment(AsOrganization.self),
            .inlineFragment(AsUser.self),
          ] }

          /// The Node ID of the RepositoryOwner object
          public var id: GitHubGraphQLAPI.ID { __data["id"] }
          /// The username used to login.
          public var login: String { __data["login"] }
          /// The HTTP URL for the owner.
          public var url: GitHubGraphQLAPI.URI { __data["url"] }

          public var asActor: AsActor? { _asInlineFragment() }
          public var asOrganization: AsOrganization? { _asInlineFragment() }
          public var asUser: AsUser? { _asInlineFragment() }

          /// AsCreatedDiscussionFeedItem.Discussion.Repository.Owner.AsActor
          ///
          /// Parent Type: `Actor`
          public struct AsActor: GitHubGraphQLAPI.InlineFragment {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public typealias RootEntityType = FeedItemFragment.AsCreatedDiscussionFeedItem.Discussion.Repository.Owner
            public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
            public static var __selections: [ApolloAPI.Selection] { [
              .fragment(AvatarFragment.self),
            ] }

            /// A URL pointing to the actor's public avatar.
            public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }
            /// The Node ID of the RepositoryOwner object
            public var id: GitHubGraphQLAPI.ID { __data["id"] }
            /// The username used to login.
            public var login: String { __data["login"] }
            /// The HTTP URL for the owner.
            public var url: GitHubGraphQLAPI.URI { __data["url"] }

            public struct Fragments: FragmentContainer {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public var avatarFragment: AvatarFragment { _toFragment() }
            }
          }

          /// AsCreatedDiscussionFeedItem.Discussion.Repository.Owner.AsOrganization
          ///
          /// Parent Type: `Organization`
          public struct AsOrganization: GitHubGraphQLAPI.InlineFragment {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public typealias RootEntityType = FeedItemFragment.AsCreatedDiscussionFeedItem.Discussion.Repository.Owner
            public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Organization }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("id", GitHubGraphQLAPI.ID.self),
              .field("name", String?.self),
            ] }

            /// The Node ID of this object
            public var id: GitHubGraphQLAPI.ID { __data["id"] }
            /// The organization's public profile name.
            public var name: String? { __data["name"] }
            /// A URL pointing to the actor's public avatar.
            public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }
            /// The username used to login.
            public var login: String { __data["login"] }
            /// The HTTP URL for the owner.
            public var url: GitHubGraphQLAPI.URI { __data["url"] }

            public struct Fragments: FragmentContainer {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public var avatarFragment: AvatarFragment { _toFragment() }
            }
          }

          /// AsCreatedDiscussionFeedItem.Discussion.Repository.Owner.AsUser
          ///
          /// Parent Type: `User`
          public struct AsUser: GitHubGraphQLAPI.InlineFragment {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public typealias RootEntityType = FeedItemFragment.AsCreatedDiscussionFeedItem.Discussion.Repository.Owner
            public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("id", GitHubGraphQLAPI.ID.self),
              .field("name", String?.self),
            ] }

            /// The Node ID of this object
            public var id: GitHubGraphQLAPI.ID { __data["id"] }
            /// The user's public profile name.
            public var name: String? { __data["name"] }
            /// A URL pointing to the actor's public avatar.
            public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }
            /// The username used to login.
            public var login: String { __data["login"] }
            /// The HTTP URL for the owner.
            public var url: GitHubGraphQLAPI.URI { __data["url"] }

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

  /// AsCreatedRepositoryFeedItem
  ///
  /// Parent Type: `CreatedRepositoryFeedItem`
  public struct AsCreatedRepositoryFeedItem: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.CreatedRepositoryFeedItem }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("actor", Actor.self),
      .field("repository", Repository.self),
    ] }

    /// The user who created the repository
    public var actor: Actor { __data["actor"] }
    /// The repository that was created
    public var repository: Repository { __data["repository"] }
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
    }

    /// AsCreatedRepositoryFeedItem.Actor
    ///
    /// Parent Type: `User`
    public struct Actor: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("url", GitHubGraphQLAPI.URI.self),
        .fragment(UserListItemFragment.self),
      ] }

      /// The HTTP URL for this user
      public var url: GitHubGraphQLAPI.URI { __data["url"] }
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

    /// AsCreatedRepositoryFeedItem.Repository
    ///
    /// Parent Type: `Repository`
    public struct Repository: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(FeedRepoFragment.self),
      ] }

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

        public var feedRepoFragment: FeedRepoFragment { _toFragment() }
        public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
        public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
      }

      /// AsCreatedRepositoryFeedItem.Repository.Owner
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

        /// AsCreatedRepositoryFeedItem.Repository.Owner.AsActor
        ///
        /// Parent Type: `Actor`
        public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = FeedItemFragment.AsCreatedRepositoryFeedItem.Repository.Owner
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

  /// AsFollowRecommendationFeedItem
  ///
  /// Parent Type: `FollowRecommendationFeedItem`
  public struct AsFollowRecommendationFeedItem: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.FollowRecommendationFeedItem }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("reason", String.self),
      .field("followee", Followee.self),
    ] }

    /// The reason why the user or organization was recommended
    public var reason: String { __data["reason"] }
    /// The user or organization that is recommended to follow
    public var followee: Followee { __data["followee"] }
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
    }

    /// AsFollowRecommendationFeedItem.Followee
    ///
    /// Parent Type: `Followable`
    public struct Followee: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.Followable }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .inlineFragment(AsUser.self),
        .inlineFragment(AsOrganization.self),
      ] }

      public var asUser: AsUser? { _asInlineFragment() }
      public var asOrganization: AsOrganization? { _asInlineFragment() }

      /// AsFollowRecommendationFeedItem.Followee.AsUser
      ///
      /// Parent Type: `User`
      public struct AsUser: GitHubGraphQLAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = FeedItemFragment.AsFollowRecommendationFeedItem.Followee
        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("url", GitHubGraphQLAPI.URI.self),
          .field("starredRepositories", StarredRepositories.self),
          .field("repositories", Repositories.self),
          .fragment(UserListItemFragment.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The HTTP URL for this user
        public var url: GitHubGraphQLAPI.URI { __data["url"] }
        /// Repositories the user has starred.
        public var starredRepositories: StarredRepositories { __data["starredRepositories"] }
        /// A list of repositories that the user owns.
        public var repositories: Repositories { __data["repositories"] }
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

        /// AsFollowRecommendationFeedItem.Followee.AsUser.StarredRepositories
        ///
        /// Parent Type: `StarredRepositoryConnection`
        public struct StarredRepositories: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.StarredRepositoryConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("totalCount", Int.self),
          ] }

          /// Identifies the total count of items in the connection.
          public var totalCount: Int { __data["totalCount"] }
        }

        /// AsFollowRecommendationFeedItem.Followee.AsUser.Repositories
        ///
        /// Parent Type: `RepositoryConnection`
        public struct Repositories: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("totalCount", Int.self),
          ] }

          /// Identifies the total count of items in the connection.
          public var totalCount: Int { __data["totalCount"] }
        }
      }

      /// AsFollowRecommendationFeedItem.Followee.AsOrganization
      ///
      /// Parent Type: `Organization`
      public struct AsOrganization: GitHubGraphQLAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = FeedItemFragment.AsFollowRecommendationFeedItem.Followee
        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Organization }
        public static var __selections: [ApolloAPI.Selection] { [
          .fragment(OrganizationListItemFragment.self),
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

          public var organizationListItemFragment: OrganizationListItemFragment { _toFragment() }
          public var avatarFragment: AvatarFragment { _toFragment() }
        }
      }
    }
  }

  /// AsFollowedUserFeedItem
  ///
  /// Parent Type: `FollowedUserFeedItem`
  public struct AsFollowedUserFeedItem: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.FollowedUserFeedItem }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("followee", Followee.self),
      .field("follower", Follower.self),
    ] }

    /// The entity that was followed
    public var followee: Followee { __data["followee"] }
    /// The user who performed the follow action
    public var follower: Follower { __data["follower"] }
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
    }

    /// AsFollowedUserFeedItem.Followee
    ///
    /// Parent Type: `Followable`
    public struct Followee: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Unions.Followable }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .inlineFragment(AsUser.self),
        .inlineFragment(AsOrganization.self),
      ] }

      public var asUser: AsUser? { _asInlineFragment() }
      public var asOrganization: AsOrganization? { _asInlineFragment() }

      /// AsFollowedUserFeedItem.Followee.AsUser
      ///
      /// Parent Type: `User`
      public struct AsUser: GitHubGraphQLAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = FeedItemFragment.AsFollowedUserFeedItem.Followee
        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("url", GitHubGraphQLAPI.URI.self),
          .field("starredRepositories", StarredRepositories.self),
          .field("repositories", Repositories.self),
          .fragment(UserListItemFragment.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The HTTP URL for this user
        public var url: GitHubGraphQLAPI.URI { __data["url"] }
        /// Repositories the user has starred.
        public var starredRepositories: StarredRepositories { __data["starredRepositories"] }
        /// A list of repositories that the user owns.
        public var repositories: Repositories { __data["repositories"] }
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

        /// AsFollowedUserFeedItem.Followee.AsUser.StarredRepositories
        ///
        /// Parent Type: `StarredRepositoryConnection`
        public struct StarredRepositories: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.StarredRepositoryConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("totalCount", Int.self),
          ] }

          /// Identifies the total count of items in the connection.
          public var totalCount: Int { __data["totalCount"] }
        }

        /// AsFollowedUserFeedItem.Followee.AsUser.Repositories
        ///
        /// Parent Type: `RepositoryConnection`
        public struct Repositories: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("totalCount", Int.self),
          ] }

          /// Identifies the total count of items in the connection.
          public var totalCount: Int { __data["totalCount"] }
        }
      }

      /// AsFollowedUserFeedItem.Followee.AsOrganization
      ///
      /// Parent Type: `Organization`
      public struct AsOrganization: GitHubGraphQLAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = FeedItemFragment.AsFollowedUserFeedItem.Followee
        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Organization }
        public static var __selections: [ApolloAPI.Selection] { [
          .fragment(OrganizationListItemFragment.self),
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

          public var organizationListItemFragment: OrganizationListItemFragment { _toFragment() }
          public var avatarFragment: AvatarFragment { _toFragment() }
        }
      }
    }

    /// AsFollowedUserFeedItem.Follower
    ///
    /// Parent Type: `User`
    public struct Follower: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("bioHTML", GitHubGraphQLAPI.HTML.self),
        .field("url", GitHubGraphQLAPI.URI.self),
        .fragment(UserListItemFragment.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
      /// The user's public profile bio as HTML.
      public var bioHTML: GitHubGraphQLAPI.HTML { __data["bioHTML"] }
      /// The HTTP URL for this user
      public var url: GitHubGraphQLAPI.URI { __data["url"] }
      /// The user's public profile name.
      public var name: String? { __data["name"] }
      /// The username used to login.
      public var login: String { __data["login"] }
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
  }

  /// AsForkedRepositoryFeedItem
  ///
  /// Parent Type: `ForkedRepositoryFeedItem`
  public struct AsForkedRepositoryFeedItem: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.ForkedRepositoryFeedItem }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("actor", Actor.self),
      .field("repository", Repository.self),
    ] }

    /// The user who forked the repository
    public var actor: Actor { __data["actor"] }
    /// The repository that was forked
    public var repository: Repository { __data["repository"] }
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
    }

    /// AsForkedRepositoryFeedItem.Actor
    ///
    /// Parent Type: `User`
    public struct Actor: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("url", GitHubGraphQLAPI.URI.self),
        .fragment(UserListItemFragment.self),
      ] }

      /// The HTTP URL for this user
      public var url: GitHubGraphQLAPI.URI { __data["url"] }
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

    /// AsForkedRepositoryFeedItem.Repository
    ///
    /// Parent Type: `Repository`
    public struct Repository: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(FeedRepoFragment.self),
      ] }

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

        public var feedRepoFragment: FeedRepoFragment { _toFragment() }
        public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
        public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
      }

      /// AsForkedRepositoryFeedItem.Repository.Owner
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

        /// AsForkedRepositoryFeedItem.Repository.Owner.AsActor
        ///
        /// Parent Type: `Actor`
        public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = FeedItemFragment.AsForkedRepositoryFeedItem.Repository.Owner
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

  /// AsMergedPullRequestFeedItem
  ///
  /// Parent Type: `MergedPullRequestFeedItem`
  public struct AsMergedPullRequestFeedItem: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.MergedPullRequestFeedItem }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("actor", Actor.self),
      .field("pullRequest", PullRequest.self),
    ] }

    /// The author of the pull request
    public var actor: Actor { __data["actor"] }
    /// The pull request that was merged
    public var pullRequest: PullRequest { __data["pullRequest"] }
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
    }

    /// AsMergedPullRequestFeedItem.Actor
    ///
    /// Parent Type: `User`
    public struct Actor: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("url", GitHubGraphQLAPI.URI.self),
        .fragment(UserListItemFragment.self),
      ] }

      /// The HTTP URL for this user
      public var url: GitHubGraphQLAPI.URI { __data["url"] }
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

    /// AsMergedPullRequestFeedItem.PullRequest
    ///
    /// Parent Type: `PullRequest`
    public struct PullRequest: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.PullRequest }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .field("state", GraphQLEnum<GitHubGraphQLAPI.PullRequestState>.self),
        .field("baseRefName", String.self),
        .field("headRefName", String.self),
        .field("url", GitHubGraphQLAPI.URI.self),
        .field("number", Int.self),
        .field("headRepositoryOwner", HeadRepositoryOwner?.self),
        .field("baseRepository", BaseRepository?.self),
        .field("author", Author?.self),
        .field("bodyHTML", GitHubGraphQLAPI.HTML.self),
        .field("titleHTML", GitHubGraphQLAPI.HTML.self),
        .fragment(ReactionFieldsFragment.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
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
      public var headRepositoryOwner: HeadRepositoryOwner? { __data["headRepositoryOwner"] }
      /// The repository associated with this pull request's base Ref.
      public var baseRepository: BaseRepository? { __data["baseRepository"] }
      /// The actor who authored the comment.
      public var author: Author? { __data["author"] }
      /// The body rendered to HTML.
      public var bodyHTML: GitHubGraphQLAPI.HTML { __data["bodyHTML"] }
      /// Identifies the pull request title rendered to HTML.
      public var titleHTML: GitHubGraphQLAPI.HTML { __data["titleHTML"] }
      /// Can user react to this subject
      public var viewerCanReact: Bool { __data["viewerCanReact"] }
      /// A list of reactions grouped by content left on the subject.
      public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
      }

      /// AsMergedPullRequestFeedItem.PullRequest.HeadRepositoryOwner
      ///
      /// Parent Type: `RepositoryOwner`
      public struct HeadRepositoryOwner: GitHubGraphQLAPI.SelectionSet {
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

      /// AsMergedPullRequestFeedItem.PullRequest.BaseRepository
      ///
      /// Parent Type: `Repository`
      public struct BaseRepository: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GitHubGraphQLAPI.ID.self),
          .field("url", GitHubGraphQLAPI.URI.self),
          .field("owner", Owner.self),
          .field("name", String.self),
        ] }

        /// The Node ID of this object
        public var id: GitHubGraphQLAPI.ID { __data["id"] }
        /// The HTTP URL for this repository
        public var url: GitHubGraphQLAPI.URI { __data["url"] }
        /// The User owner of the repository.
        public var owner: Owner { __data["owner"] }
        /// The name of the repository.
        public var name: String { __data["name"] }

        /// AsMergedPullRequestFeedItem.PullRequest.BaseRepository.Owner
        ///
        /// Parent Type: `RepositoryOwner`
        public struct Owner: GitHubGraphQLAPI.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.RepositoryOwner }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .inlineFragment(AsActor.self),
          ] }

          public var asActor: AsActor? { _asInlineFragment() }

          /// AsMergedPullRequestFeedItem.PullRequest.BaseRepository.Owner.AsActor
          ///
          /// Parent Type: `Actor`
          public struct AsActor: GitHubGraphQLAPI.InlineFragment {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public typealias RootEntityType = FeedItemFragment.AsMergedPullRequestFeedItem.PullRequest.BaseRepository.Owner
            public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
            public static var __selections: [ApolloAPI.Selection] { [
              .fragment(ActorFieldsFragment.self),
            ] }

            /// A URL pointing to the actor's public avatar.
            public var avatarUrl: GitHubGraphQLAPI.URI { __data["avatarUrl"] }
            /// The username of the actor.
            public var login: String { __data["login"] }
            /// The HTTP URL for this actor.
            public var url: GitHubGraphQLAPI.URI { __data["url"] }

            public struct Fragments: FragmentContainer {
              public let __data: DataDict
              public init(_dataDict: DataDict) { __data = _dataDict }

              public var actorFieldsFragment: ActorFieldsFragment { _toFragment() }
              public var avatarFragment: AvatarFragment { _toFragment() }
            }
          }
        }
      }

      /// AsMergedPullRequestFeedItem.PullRequest.Author
      ///
      /// Parent Type: `Actor`
      public struct Author: GitHubGraphQLAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Interfaces.Actor }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("url", GitHubGraphQLAPI.URI.self),
          .inlineFragment(AsUser.self),
        ] }

        /// The HTTP URL for this actor.
        public var url: GitHubGraphQLAPI.URI { __data["url"] }

        public var asUser: AsUser? { _asInlineFragment() }

        /// AsMergedPullRequestFeedItem.PullRequest.Author.AsUser
        ///
        /// Parent Type: `User`
        public struct AsUser: GitHubGraphQLAPI.InlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = FeedItemFragment.AsMergedPullRequestFeedItem.PullRequest.Author
          public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
          public static var __selections: [ApolloAPI.Selection] { [
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
          /// The HTTP URL for this actor.
          public var url: GitHubGraphQLAPI.URI { __data["url"] }

          public struct Fragments: FragmentContainer {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public var userListItemFragment: UserListItemFragment { _toFragment() }
            public var avatarFragment: AvatarFragment { _toFragment() }
          }
        }
      }
    }
  }

  /// AsPublishedReleaseFeedItem
  ///
  /// Parent Type: `PublishedReleaseFeedItem`
  public struct AsPublishedReleaseFeedItem: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.PublishedReleaseFeedItem }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("actor", Actor.self),
      .field("release", Release.self),
    ] }

    /// The user who published the release
    public var actor: Actor { __data["actor"] }
    /// The release that was published
    public var release: Release { __data["release"] }
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
    }

    /// AsPublishedReleaseFeedItem.Actor
    ///
    /// Parent Type: `User`
    public struct Actor: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("url", GitHubGraphQLAPI.URI.self),
        .fragment(UserListItemFragment.self),
      ] }

      /// The HTTP URL for this user
      public var url: GitHubGraphQLAPI.URI { __data["url"] }
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

    /// AsPublishedReleaseFeedItem.Release
    ///
    /// Parent Type: `Release`
    public struct Release: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Release }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", GitHubGraphQLAPI.ID.self),
        .fragment(FeedReleaseFragment.self),
      ] }

      /// The Node ID of this object
      public var id: GitHubGraphQLAPI.ID { __data["id"] }
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
      /// Can user react to this subject
      public var viewerCanReact: Bool { __data["viewerCanReact"] }
      /// A list of reactions grouped by content left on the subject.
      public var reactionGroups: [ReactionFieldsFragment.ReactionGroup]? { __data["reactionGroups"] }

      public struct Fragments: FragmentContainer {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public var feedReleaseFragment: FeedReleaseFragment { _toFragment() }
        public var releaseNameFragment: ReleaseNameFragment { _toFragment() }
        public var reactionFieldsFragment: ReactionFieldsFragment { _toFragment() }
      }

      /// AsPublishedReleaseFeedItem.Release.Author
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

  /// AsRepositoryRecommendationFeedItem
  ///
  /// Parent Type: `RepositoryRecommendationFeedItem`
  public struct AsRepositoryRecommendationFeedItem: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.RepositoryRecommendationFeedItem }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("reason", String.self),
      .field("repository", Repository.self),
    ] }

    /// The reason why the repository was recommended
    public var reason: String { __data["reason"] }
    /// The repository that is recommended
    public var repository: Repository { __data["repository"] }
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
    }

    /// AsRepositoryRecommendationFeedItem.Repository
    ///
    /// Parent Type: `Repository`
    public struct Repository: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(FeedRepoFragment.self),
      ] }

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

        public var feedRepoFragment: FeedRepoFragment { _toFragment() }
        public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
        public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
      }

      /// AsRepositoryRecommendationFeedItem.Repository.Owner
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

        /// AsRepositoryRecommendationFeedItem.Repository.Owner.AsActor
        ///
        /// Parent Type: `Actor`
        public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = FeedItemFragment.AsRepositoryRecommendationFeedItem.Repository.Owner
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

  /// AsStarredRepositoryFeedItem
  ///
  /// Parent Type: `StarredRepositoryFeedItem`
  public struct AsStarredRepositoryFeedItem: GitHubGraphQLAPI.InlineFragment {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public typealias RootEntityType = FeedItemFragment
    public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.StarredRepositoryFeedItem }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("actor", Actor.self),
      .field("repository", Repository.self),
    ] }

    /// The user who starred the repository
    public var actor: Actor { __data["actor"] }
    /// The repository that was starred
    public var repository: Repository { __data["repository"] }
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
    }

    /// AsStarredRepositoryFeedItem.Actor
    ///
    /// Parent Type: `User`
    public struct Actor: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.User }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("url", GitHubGraphQLAPI.URI.self),
        .fragment(UserListItemFragment.self),
      ] }

      /// The HTTP URL for this user
      public var url: GitHubGraphQLAPI.URI { __data["url"] }
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

    /// AsStarredRepositoryFeedItem.Repository
    ///
    /// Parent Type: `Repository`
    public struct Repository: GitHubGraphQLAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { GitHubGraphQLAPI.Objects.Repository }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .fragment(FeedRepoFragment.self),
      ] }

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

        public var feedRepoFragment: FeedRepoFragment { _toFragment() }
        public var repositoryListItemFragment: RepositoryListItemFragment { _toFragment() }
        public var userListMetadataForRepositoryFragment: UserListMetadataForRepositoryFragment { _toFragment() }
      }

      /// AsStarredRepositoryFeedItem.Repository.Owner
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

        /// AsStarredRepositoryFeedItem.Repository.Owner.AsActor
        ///
        /// Parent Type: `Actor`
        public struct AsActor: GitHubGraphQLAPI.InlineFragment, ApolloAPI.CompositeInlineFragment {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public typealias RootEntityType = FeedItemFragment.AsStarredRepositoryFeedItem.Repository.Owner
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
