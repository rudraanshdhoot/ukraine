//
//  ArticleView.swift
//  patreons
//
//  Created by Rudraansh Dhoot on 25/02/2022.
//

import SwiftUI

struct ArticleView: View {
    let article: Article
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                AsyncImage(url: article.imageURL) { phase in
                    switch phase {
                    case .empty:
                        ProgressView()
                    case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 130, height: 90)
                        
                    case .failure:
                        Image(systemName: "photo")
                    }
                }
                VStack {
                    Text(article.title)
                        .font(.title3)
                    .fontWeight(.bold)
                    Text(article.descText)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
                
            }
        }
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            ArticleView(article: .previewData[0])
                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
        }
    }
}
