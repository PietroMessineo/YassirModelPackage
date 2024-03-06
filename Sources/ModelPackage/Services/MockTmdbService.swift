//
//  MockTmdbService.swift
//  YassirMovies
//
//  Created by Pietro Messineo on 06/03/24.
//

import Foundation

public class MockTmdbService: TmdbServiceProtocol {
    public var shouldReturnError: Bool = false
    public var editorsChoiceResponseToReturn: EditorsChoiceResponse?
    public var movieDetailsToReturn: MovieDetailsResponse?
    public var movieDiscoverToReturn: DiscoverResponse?
    public var searchToReturn: SearchResponse?
    public var watchProvidersToReturn: WatchProvidersResponse?
    
    public init() {}
    
    public func getEditorsChoice() async throws -> EditorsChoiceResponse {
        if shouldReturnError {
            throw MockServiceError.dataNotFound
        }
        
        guard let response = editorsChoiceResponseToReturn else {
            throw MockServiceError.dataNotFound
        }
        
        return response
    }
    
    public func getDiscover(page: Int, movieList: DiscoverMovieList) async throws -> DiscoverResponse {
        if shouldReturnError {
            throw MockServiceError.dataNotFound
        }
        
        guard let response = movieDiscoverToReturn else {
            throw MockServiceError.dataNotFound
        }
        
        return response
    }
    
    public func getMovieDetails(id: String) async throws -> MovieDetailsResponse {
        if shouldReturnError {
            throw MockServiceError.dataNotFound
        }
        
        guard let response = movieDetailsToReturn else {
            throw MockServiceError.dataNotFound
        }
        
        return response
    }
    
    public func getMovieDiscover(page: Int, movieList: DiscoverMovieList) async throws -> DiscoverResponse {
        if shouldReturnError {
            throw MockServiceError.dataNotFound
        }
        
        guard let response = movieDiscoverToReturn else {
            throw MockServiceError.dataNotFound
        }
        
        return response
    }
    
    public func searchFor(query: String) async throws -> SearchResponse {
        if shouldReturnError {
            throw MockServiceError.dataNotFound
        }
        
        guard let response = searchToReturn else {
            throw MockServiceError.dataNotFound
        }
        
        return response
    }
    
    public func getMovieWatchProviders(movieId: String) async throws -> WatchProvidersResponse {
        if shouldReturnError {
            throw MockServiceError.dataNotFound
        }
        
        guard let response = watchProvidersToReturn else {
            throw MockServiceError.dataNotFound
        }
        
        return response
    }
}

public enum MockServiceError: Error {
    case dataNotFound
}
