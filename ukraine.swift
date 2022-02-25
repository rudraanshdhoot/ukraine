//
//  ukraine.swift
//  patreons
//
//  Created by Rudraansh Dhoot on 25/02/2022.
//

import SwiftUI

struct ukraine: View {
    let articles: [Article]
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading) {
                Image("ukrainee")
                    .resizable()
                    .scaledToFit()
                    Text("💙💛")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .center)
                HStack {
                    Text("Departments")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    VStack {
                        LinearGradient(colors: [.blue, .yellow], startPoint: .leading, endPoint: .trailing)
                            .frame(width: 70, height: 40)
                            .mask {
                                Text("News")
                                    .font(.title3)
                                    .fontWeight(.bold)
                        }
                        Rectangle()
                            .frame(width: 30, height: 1)
                            .foregroundColor(.yellow)
                    }
                    Spacer()
                    Text("Events")
                        .font(.title3)
                        .fontWeight(.bold)
                    Spacer()
                    Text("Videos")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                VStack {
                    List {
                        ForEach(articles) { article in
                            ArticleView(article: article)
                                .padding()
                        }
                    }
                }
                Spacer()
            }
            
        }
    }
}

struct ukraine_Previews: PreviewProvider {
    static var previews: some View {
        ukraine(articles: Article.previewData)
            .preferredColorScheme(.dark)
    }
}
