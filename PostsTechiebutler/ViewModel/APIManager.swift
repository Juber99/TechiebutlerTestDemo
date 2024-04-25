//
//  APIManager.swift
//  PostsTechiebutler
//
//  Created by juber99 on 25/04/24.
//

import Foundation

enum APIError: Error {
    case InvalidUrlError
    case InvalidResponse
    case InvalidData
}

enum APIEndPoint {
    static let apiPosts = "https://jsonplaceholder.typicode.com/posts"
}

final class APIManager {
    
    func fetchApis<T: Codable>(pageNumber: Int) async throws -> [T] {
        
        let strUrl = "\(APIEndPoint.apiPosts)?_limit=15&_page=\(pageNumber)"
        guard let url = URL(string: strUrl) else { throw APIError.InvalidUrlError }
        
        let(data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw APIError.InvalidResponse
        }
        
        do {
            let decoder = try JSONDecoder().decode([T].self, from: data)
            return decoder
        }catch {
            throw APIError.InvalidData
        }
        
    }
}


