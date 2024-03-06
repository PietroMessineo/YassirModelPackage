//
//  SearchResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct SearchResponse: Codable {
    public let results: [SearchResult]?
}

public struct SearchResult: Codable, Identifiable, Hashable {
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
