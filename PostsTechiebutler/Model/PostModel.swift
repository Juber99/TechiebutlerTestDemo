//
//  PostModel.swift
//  PostsTechiebutler
//
//  Created by juber99 on 25/04/24.
//

import Foundation

// MARK: - WelcomeElement
struct PostModel: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
}


