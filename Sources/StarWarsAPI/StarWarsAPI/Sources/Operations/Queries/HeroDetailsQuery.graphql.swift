// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class HeroDetailsQuery: GraphQLQuery {
  public static let operationName: String = "HeroDetails"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    operationIdentifier: "bf81c1338a3953d1c17c5cad3db3c3ab18b16a6822125ab81c15eb0dd3e82193",
    definition: .init(
      #"query HeroDetails($episode: Episode) { hero(episode: $episode) { __typename name ... on Human { __typename height } ... on Droid { __typename primaryFunction } } }"#
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
          ObjectIdentifier(HeroDetailsQuery.Data.self)
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
        .field("name", String.self),
        .inlineFragment(AsHuman.self),
        .inlineFragment(AsDroid.self),
      ] }

      /// The name of the character
      public var name: String { __data["name"] }

      public var asHuman: AsHuman? { _asInlineFragment() }
      public var asDroid: AsDroid? { _asInlineFragment() }

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
            ObjectIdentifier(HeroDetailsQuery.Data.Hero.self)
          ]
        ))
      }

      /// Hero.AsHuman
      ///
      /// Parent Type: `Human`
      public struct AsHuman: StarWarsAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = HeroDetailsQuery.Data.Hero
        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Human }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("height", Double?.self),
        ] }

        /// Height in the preferred unit, default is meters
        public var height: Double? { __data["height"] }
        /// The name of the character
        public var name: String { __data["name"] }

        public init(
          height: Double? = nil,
          name: String
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": StarWarsAPI.Objects.Human.typename,
              "height": height as AnyHashable? ?? .none,
              "name": name,
            ],
            fulfilledFragments: [
              ObjectIdentifier(HeroDetailsQuery.Data.Hero.self),
              ObjectIdentifier(HeroDetailsQuery.Data.Hero.AsHuman.self)
            ]
          ))
        }
      }

      /// Hero.AsDroid
      ///
      /// Parent Type: `Droid`
      public struct AsDroid: StarWarsAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = HeroDetailsQuery.Data.Hero
        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Droid }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("primaryFunction", String?.self),
        ] }

        /// This droid's primary function
        public var primaryFunction: String? { __data["primaryFunction"] }
        /// The name of the character
        public var name: String { __data["name"] }

        public init(
          primaryFunction: String? = nil,
          name: String
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": StarWarsAPI.Objects.Droid.typename,
              "primaryFunction": primaryFunction as AnyHashable? ?? .none,
              "name": name,
            ],
            fulfilledFragments: [
              ObjectIdentifier(HeroDetailsQuery.Data.Hero.self),
              ObjectIdentifier(HeroDetailsQuery.Data.Hero.AsDroid.self)
            ]
          ))
        }
      }
    }
  }
}
