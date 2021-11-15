//
//  UserResponce.swift
//  less15HWJSON
//
//  Created by User on 15.11.2021.
//

import Foundation

struct MusicPage: Codable {
    
    var page: Int
    var results: [Music]
    var total_pages: Int
    var total_results: Int
    
}

struct Music: Codable {
    
    var adult: Bool
    var backdrop_path: String
    var genre_ids: [Int]
    var id: Int
    var original_language: String
    var original_title: String
    var overview: String
    var popularity: Double
    var poster_path: String
    var release_date: String
    var title: String
    var video: Bool
    var vote_average: Double
    var vote_count: Int
    
}
