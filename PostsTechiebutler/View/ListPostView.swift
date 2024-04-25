//
//  ListPostView.swift
//  PostsTechiebutler
//
//  Created by juber99 on 25/04/24.
//

import SwiftUI

struct ListPostView: View {
    
    var post: PostModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Id - \(post.id)")
                .font(.system(size: 15))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text(post.title)
                .font(.system(size: 15))
        }
    }
}

#Preview {
    ListPostView(post: PostModel(userID: 1, id: 1, title: "Test Title", body: "test body"))
}
