//
//  PostViewModel.swift
//  PostsTechiebutler
//
//  Created by juber99 on 25/04/24.
//

import Foundation

@Observable class PostViewModel {
    
    var totalPages = 0
    var page : Int = 1
    
    var posts = [PostModel]()
    private let manager = APIManager()
    
    func loadDataFromAPI(){
        Task(priority: .medium) {
            await fetchPosts()
        }
    }
  
    func fetchPosts() async {
        do {
            let p: [PostModel] =  try await manager.fetchApis(pageNumber: page)
            self.posts.append(contentsOf: p)
            page = page + 1
        }catch {
            
        }
    }
}

