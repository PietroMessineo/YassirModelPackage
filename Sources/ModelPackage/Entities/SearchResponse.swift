//
//  SearchResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct SearchResponse: Codable {
    public init(results: [SearchResult]?) {
        self.results = results
    }
    
    public let results: [SearchResult]?
}

public struct SearchResult: Codable, Identifiable, Hashable {
    public init(backdrop_path: String?, id: Int, name: String?, title: String?, original_language: String?, original_name: String?, original_title: String?, poster_path: String?, media_type: String?, first_air_date: Date?, release_date: Date?, known_for_department: String?, profile_path: String?) {
        self.backdrop_path = backdrop_path
        self.id = id
        self.name = name
        self.title = title
        self.original_language = original_language
        self.original_name = original_name
        self.original_title = original_title
        self.poster_path = poster_path
        self.media_type = media_type
        self.first_air_date = first_air_date
        self.release_date = release_date
        self.known_for_department = known_for_department
        self.profile_path = profile_path
    }
    
    public let backdrop_path: String?
    public let id: Int
    public let name: String?
    public let title: String?
    public let original_language: String?
    public let original_name: String?
    public let original_title: String?
    public let poster_path: String?
    public let media_type: String?
    public let first_air_date: Date?
    public let release_date: Date?
    public let known_for_department: String?
    public let profile_path: String?
}
