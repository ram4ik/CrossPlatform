//
//  ArticleView.swift
//  CrossPlatform
//
//  Created by Ramill Ibragimov on 11.05.2021.
//

import SwiftUI

struct ArticleView: View {
    let article: Article
    
    var body: some View {
        #if os(watchOS)
        return
            VStack(alignment: .leading, spacing: 5) {
                Text(article.title)
                Text(article.description)
                Spacer()
            }.padding()
        #else
        return
            VStack(alignment: .leading, spacing: 5) {
                Text(article.title)
                    .font(.title)
                Text(article.description)
                    .font(.headline)
                Spacer()
        }.padding()
        #endif
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article(title: "title", description: "description", type: "type"))
    }
}
