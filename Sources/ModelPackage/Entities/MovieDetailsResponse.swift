//
//  MovieDetailsResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct MovieDetailsResponse: Codable {
    public init(success: Bool?, id: Int?, original_title: String?, release_date: Date?, overview: String?, credits: Credits?, videos: Videos?, poster_path: String?, runtime: Int?) {
        self.success = success
        self.id = id
        self.original_title = original_title
        self.release_date = release_date
        self.overview = overview
        self.credits = credits
        self.videos = videos
        self.poster_path = poster_path
        self.runtime = runtime
    }
    
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
    public init(cast: [Person]?, crew: [Person]?) {
        self.cast = cast
        self.crew = crew
    }
    
    public let cast: [Person]?
    public let crew: [Person]?
}

public struct Person: Codable {
    public init(name: String?, character: String?, id: Int, profile_path: String?, known_for_department: String?, poster_path: String?) {
        self.name = name
        self.character = character
        self.id = id
        self.profile_path = profile_path
        self.known_for_department = known_for_department
        self.poster_path = poster_path
    }
    
    public let name: String?
    public let character: String?
    public let id: Int
    public let profile_path: String?
    public let known_for_department: String?
    public let poster_path: String?
}

public struct Videos: Codable {
    public init(results: [Results]?) {
        self.results = results
    }
    
    public let results: [Results]?
}

public struct Results: Codable {
    public init(name: String?, type: String?, published_at: String?, key: String?, id: String?) {
        self.name = name
        self.type = type
        self.published_at = published_at
        self.key = key
        self.id = id
    }
    
    public let name: String?
    public let type: String?
    public let published_at: String?
    public let key: String?
    public let id: String?
}
