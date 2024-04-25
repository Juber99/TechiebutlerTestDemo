//
//  ListPostsView.swift
//  PostsTechiebutler
//
//  Created by juber99 on 25/04/24.
//

import SwiftUI

struct PostsView: View {
    
    var postViewModel: PostViewModel = PostViewModel()
    @State var isFetch: Bool = true
    
    var body: some View {
        NavigationView{
            ZStack {
                VStack {
                    ActivityIndicator(isAnimating: .constant(isFetch), style: .large)
                    Text("Loading...")
                }
                VStack {
                    List(postViewModel.posts, id: \.id) { post in
                        
                        NavigationLink(destination: PostDetailView(post: post)) {
                            ListPostView(post: post)
                               .onAppear {
                               if post.id == postViewModel.posts.last?.id {
                                        print("Pagination here: Load More data")
                                        postViewModel.loadDataFromAPI()
                                }
                                   
                            }
                        }
                       
                    }
                }.task {
                   await postViewModel.fetchPosts()
                   isFetch = false
                }.listStyle(.plain)
                    .navigationTitle("Posts")
            }
        
        }
    
    }
}

#Preview {
    PostsView()
}
