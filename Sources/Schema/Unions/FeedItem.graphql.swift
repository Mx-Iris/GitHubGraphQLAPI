// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Unions {
  /// Types that can appear in the dashboard feed
  static let FeedItem = Union(
    name: "FeedItem",
    possibleTypes: [
      Objects.AddedToListFeedItem.self,
      Objects.BecameSponsorableFeedItem.self,
      Objects.CreatedDiscussionFeedItem.self,
      Objects.CreatedRepositoryFeedItem.self,
      Objects.FollowRecommendationFeedItem.self,
      Objects.FollowedUserFeedItem.self,
      Objects.ForkedRepositoryFeedItem.self,
      Objects.MemberAddToRepositoryFeedItem.self,
      Objects.MergedPullRequestFeedItem.self,
      Objects.NearSponsorsGoalFeedItem.self,
      Objects.PublishedReleaseFeedItem.self,
      Objects.RepositoryRecommendationFeedItem.self,
      Objects.SponsoredUserFeedItem.self,
      Objects.StarredRepositoryFeedItem.self
    ]
  )
}