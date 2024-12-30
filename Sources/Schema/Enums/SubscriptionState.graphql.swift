// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// The possible states of a subscription.
public enum SubscriptionState: String, EnumType {
  /// The User is only notified when participating or @mentioned.
  case unsubscribed = "UNSUBSCRIBED"
  /// The User is notified of new releases, or when participating or @mentioned. Only valid for Repositories.
  case releasesOnly = "RELEASES_ONLY"
  /// The User is notified of all conversations.
  case subscribed = "SUBSCRIBED"
  /// The User is never notified.
  case ignored = "IGNORED"
  /// The User is notified of a custom subset of notifications.
  case custom = "CUSTOM"
}
