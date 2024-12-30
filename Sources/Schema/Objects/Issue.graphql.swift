// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public extension Objects {
  /// An Issue is a place to discuss ideas, enhancements, tasks, and bugs for a project.
  static let Issue = ApolloAPI.Object(
    typename: "Issue",
    implementedInterfaces: [
      Interfaces.Node.self,
      Interfaces.Assignable.self,
      Interfaces.Closable.self,
      Interfaces.Comment.self,
      Interfaces.Deletable.self,
      Interfaces.Updatable.self,
      Interfaces.UpdatableComment.self,
      Interfaces.Labelable.self,
      Interfaces.Lockable.self,
      Interfaces.MentionSuggestable.self,
      Interfaces.Reactable.self,
      Interfaces.RepositoryNode.self,
      Interfaces.Subscribable.self,
      Interfaces.SubscribableThread.self,
      Interfaces.UniformResourceLocatable.self,
      Interfaces.OrgBlockable.self,
      Interfaces.ProjectNextOwner.self,
      Interfaces.ProjectV2Owner.self,
      Interfaces.MarkdownPreviewable.self
    ]
  )
}