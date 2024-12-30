// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

/// The possible commit status states.
public enum StatusState: String, EnumType {
  /// Status is expected.
  case expected = "EXPECTED"
  /// Status is errored.
  case error = "ERROR"
  /// Status is failing.
  case failure = "FAILURE"
  /// Status is pending.
  case pending = "PENDING"
  /// Status is successful.
  case success = "SUCCESS"
}
