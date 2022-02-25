//
//  article.swift
//  patreons
//
//  Created by Rudraansh Dhoot on 25/02/2022.
//

import Foundation

struct Article {
    let source: Source
    
    let title: String
    let url: String
    let publishedAt: Date
    
    let author: String?
    let desc: String?
    let urlToImage: String?
    
    var captionText: String {
        "\(source.name)"
    }
    
    var authorText: String {
        author ?? ""
    }
    
    var descText: String {
        desc ?? ""
    }
    var articleURL: URL {
        URL(string: url)!
    }
    
    var imageURL: URL? {
        guard let urlToImage = urlToImage else {
            return nil
        }
        return URL(string: urlToImage)
    }
}

extension Article: Codable {}
extension Article: Identifiable {
    var id: String { url }
}
extension Article: Equatable {}


struct Source {
    let name: String
}

extension Source: Codable {}
extension Source: Equatable {}

extension Article {
    static var previewData: [Article] {
        let previewDataURL = Bundle.main.url(forResource: "news", withExtension: "json")!
        let data = try! Data(contentsOf: previewDataURL)
        
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        let apiResponse = try! jsonDecoder.decode(NewsAPIResponse.self, from: data)
        
        return apiResponse.articles ?? []
    }
    
}

