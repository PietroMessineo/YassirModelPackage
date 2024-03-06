//
//  DiscoverResponse.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 05/03/24.
//

import Foundation

public struct DiscoverResponse: Codable {
    public init(results: [Items]?) {
        self.results = results
    }
    
    public let results: [Items]?
}
