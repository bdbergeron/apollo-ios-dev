// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class HeroAndFriendsNamesWithIDForParentOnlyQuery: GraphQLQuery {
  public static let operationName: String = "HeroAndFriendsNamesWithIDForParentOnly"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    operationIdentifier: "de03aaedeb69050ef75e3aa56b262b4ea1e08bb6fd174f2e91ddd9b84a8ff897",
    definition: .init(
      #"query HeroAndFriendsNamesWithIDForParentOnly($episode: Episode) { hero(episode: $episode) { __typename id name friends { __typename name } } }"#
    ))

  public var episode: GraphQLNullable<GraphQLEnum<Episode>>

  public init(episode: GraphQLNullable<GraphQLEnum<Episode>>) {
    self.episode = episode
  }

  public var __variables: Variables? { ["episode": episode] }

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("hero", Hero?.self, arguments: ["episode": .variable("episode")]),
    ] }

    public var hero: Hero? { __data["hero"] }

    public init(
      hero: Hero? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": StarWarsAPI.Objects.Query.typename,
          "hero": hero._fieldData as AnyHashable? ?? .none,
        ],
        fulfilledFragments: [
          ObjectIdentifier(HeroAndFriendsNamesWithIDForParentOnlyQuery.Data.self)
        ]
      ))
    }

    /// Hero
    ///
    /// Parent Type: `Character`
    public struct Hero: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", StarWarsAPI.ID.self),
        .field("name", String.self),
        .field("friends", [Friend?]?.self),
      ] }

      /// The ID of the character
      public var id: StarWarsAPI.ID { __data["id"] }
      /// The name of the character
      public var name: String { __data["name"] }
      /// The friends of the character, or an empty list if they have none
      public var friends: [Friend?]? { __data["friends"] }

      public init(
        __typename: String,
        id: StarWarsAPI.ID,
        name: String,
        friends: [Friend?]? = nil
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": __typename,
            "id": id,
            "name": name,
            "friends": friends._fieldData as AnyHashable? ?? .none,
          ],
          fulfilledFragments: [
            ObjectIdentifier(HeroAndFriendsNamesWithIDForParentOnlyQuery.Data.Hero.self)
          ]
        ))
      }

      /// Hero.Friend
      ///
      /// Parent Type: `Character`
      public struct Friend: StarWarsAPI.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("name", String.self),
        ] }

        /// The name of the character
        public var name: String { __data["name"] }

        public init(
          __typename: String,
          name: String
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": __typename,
              "name": name,
            ],
            fulfilledFragments: [
              ObjectIdentifier(HeroAndFriendsNamesWithIDForParentOnlyQuery.Data.Hero.Friend.self)
            ]
          ))
        }
      }
    }
  }
}
