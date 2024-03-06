//
//  MovieDetailsResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct MovieDetailsResponse: Codable {
    let success: Bool?
    let id: Int?
    let original_title: String?
    let release_date: Date?
    let overview: String?
    let credits: Credits?
    let videos: Videos?
    let poster_path: String?
    let runtime: Int?
}

public struct Credits: Codable {
    let cast: [Person]?
    let crew: [Person]?
}

public struct Person: Codable {
    let name: String?
    let character: String?
    let id: Int
    let profile_path: String?
    let known_for_department: String?
    let poster_path: String?
}

public struct Videos: Codable {
    let results: [Results]?
}

public struct Results: Codable {
    let name: String?
    let type: String?
    let published_at: String?
    let key: String?
    let id: String?
}
