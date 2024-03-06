//
//  EditorsChoiceResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct EditorsChoiceResponse: Codable, Identifiable, Equatable {
    public init(id: Int, items: [Items]?) {
        self.id = id
        self.items = items
    }
    
    public let id: Int
    public let items: [Items]?
}

public struct Items: Codable, Identifiable, Equatable {
    public init(backdrop_path: String?, id: Int, original_title: String?, release_date: Date?, poster_path: String?) {
        self.backdrop_path = backdrop_path
        self.id = id
        self.original_title = original_title
        self.release_date = release_date
        self.poster_path = poster_path
    }
    
    public let backdrop_path: String?
    public let id: Int
    public let original_title: String?
    public let release_date: Date?
    public let poster_path: String?
}
