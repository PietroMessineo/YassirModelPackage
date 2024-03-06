//
//  MovieDetailsResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct MovieDetailsResponse: Codable {
    public let success: Bool?
    public let id: Int?
    public let original_title: String?
    public let release_date: Date?
    public let overview: String?
    public let credits: Credits?
    public let videos: Videos?
    public let poster_path: String?
    public let runtime: Int?
}

public struct Credits: Codable {
    public let cast: [Person]?
    public let crew: [Person]?
}

public struct Person: Codable {
    public let name: String?
    public let character: String?
    public let id: Int
    public let profile_path: String?
    public let known_for_department: String?
    public let poster_path: String?
}

public struct Videos: Codable {
    public let results: [Results]?
}

public struct Results: Codable {
    public let name: String?
    public let type: String?
    public let published_at: String?
    public let key: String?
    public let id: String?
}
