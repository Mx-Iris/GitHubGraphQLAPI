// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// A list of item types to include in the response
public enum FeedItemType: String, EnumType {
  /// A feed item representing the act of a repository being starred
  case starredRepositoryFeedItem = "STARRED_REPOSITORY_FEED_ITEM"
  /// A feed item representing the act of a repository being forked.
  case forkedRepositoryFeedItem = "FORKED_REPOSITORY_FEED_ITEM"
  /// A feed item representing the act of a repository being created
  case createdRepositoryFeedItem = "CREATED_REPOSITORY_FEED_ITEM"
  /// A feed item representing the act of a release being published
  case publishedReleaseFeedItem = "PUBLISHED_RELEASE_FEED_ITEM"
  /// A feed item representing the act of a discussion being created
  case createdDiscussionFeedItem = "CREATED_DISCUSSION_FEED_ITEM"
  /// A feed item representing the act of an entity being sponsored
  case sponsoredUserFeedItem = "SPONSORED_USER_FEED_ITEM"
  /// A feed item representing the act of an entity being followed
  case followedUserFeedItem = "FOLLOWED_USER_FEED_ITEM"
  /// A feed item representing the act of an entity becoming sponsorable
  case becameSponsorableFeedItem = "BECAME_SPONSORABLE_FEED_ITEM"
  /// A feed item representing the act of a repository being recommended
  case repositoryRecommendationFeedItem = "REPOSITORY_RECOMMENDATION_FEED_ITEM"
  /// A feed item representing the act of an actor adding a repository to a user list
  case addedToListFeedItem = "ADDED_TO_LIST_FEED_ITEM"
  /// A feed item representing the act of a Sponsors goal being near complete
  case nearSponsorsGoalFeedItem = "NEAR_SPONSORS_GOAL_FEED_ITEM"
  /// A feed item representing the act of an user or organization being recommended to follow
  case followRecommendationFeedItem = "FOLLOW_RECOMMENDATION_FEED_ITEM"
  /// A feed item representing the act of an open source pull request being merged
  case mergedPullRequestFeedItem = "MERGED_PULL_REQUEST_FEED_ITEM"
  /// A feed item representing the act of an actor adding a member to a repository
  case memberAddToRepositoryFeedItem = "MEMBER_ADD_TO_REPOSITORY_FEED_ITEM"
}
