//
//  PostDetailView.swift
//  PostsTechiebutler
//
//  Created by juber99 on 25/04/24.
//

import SwiftUI

struct PostDetailView: View {
    
    var post: PostModel
    var body: some View {
    
        VStack(alignment: .leading, spacing:10) {
            Text("Id : \(post.id)").fontWeight(.bold)
            Text(post.title).fontWeight(.bold)
            Text(post.body)
        }
        .padding()
        Spacer()

    }
}

#Preview {
    PostDetailView(post: PostModel(userID: 1, id: 1, title: "Test title", body: "test Body"))
}
