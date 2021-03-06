/// The episodes in the Star Wars trilogy
enum EpisodeWithoutModifier: RawRepresentable, Codable, Equatable, Hashable, CaseIterable {
  typealias RawValue = String

  /// Star Wars Episode IV: A New Hope, released in 1977.
  case NEWHOPE
  /// Star Wars Episode V: The Empire Strikes Back, released in 1980.
  case EMPIRE
  /// Star Wars Episode VI: Return of the Jedi, released in 1983.
  case JEDI
  /// An EpisodeWithoutModifier type not defined at the time this enum was generated
  case __unknown(String)

  var rawValue: String {
    switch self {
    case .NEWHOPE: return "NEWHOPE"
    case .EMPIRE: return "EMPIRE"
    case .JEDI: return "JEDI"
    case .__unknown(let value): return value
    }
  }

  init(rawValue: String) {
    switch rawValue {
    case "NEWHOPE": self = .NEWHOPE
    case "EMPIRE": self = .EMPIRE
    case "JEDI": self = .JEDI
    default: self = .__unknown(rawValue)
    }
  }

  static var allCases: [EpisodeWithoutModifier] {
    [
      .NEWHOPE,
      .EMPIRE,
      .JEDI,
    ]
  }
}
