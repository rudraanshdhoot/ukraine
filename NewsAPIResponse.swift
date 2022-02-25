//
//  NewsAPIResponse.swift
//  patreons
//
//  Created by Rudraansh Dhoot on 25/02/2022.
//

import Foundation


struct NewsAPIResponse: Decodable {
    let status: String
    let totalResults: Int?
    let articles: [Article]?
    
    let code: String?
    let message: String?
    
}
