
import Foundation
struct Base : Codable {
	let articles : [Articles]?

	enum CodingKeys: String, CodingKey {

		case articles = "articles"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		articles = try values.decodeIfPresent([Articles].self, forKey: .articles)
	}

}
