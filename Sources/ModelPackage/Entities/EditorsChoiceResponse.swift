//
//  EditorsChoiceResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct EditorsChoiceResponse: Codable, Identifiable, Equatable {
    public let id: Int
    public let items: [Items]?
}

public struct Items: Codable, Identifiable, Equatable {
    public init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.backdrop_path = try container.decodeIfPresent(String.self, forKey: .backdrop_path)
        self.id = try container.decode(Int.self, forKey: .id)
        self.original_title = try container.decodeIfPresent(String.self, forKey: .original_title)
        self.release_date = try container.decodeIfPresent(Date.self, forKey: .release_date)
        self.poster_path = try container.decodeIfPresent(String.self, forKey: .poster_path)
    }
    
    public let backdrop_path: String?
    public let id: Int
    public let original_title: String?
    public let release_date: Date?
    public let poster_path: String?
}
