//
//  ArticlesListView.swift
//  CrossPlatform
//
//  Created by Ramill Ibragimov on 11.05.2021.
//

import SwiftUI

struct ArticlesListView: View {
    let articles: [Article]
    
    var body: some View {
        #if os(macOS)
        return
            view
            .frame(minWidth: 400, minHeight: 600)
        #else
        return view
        #endif
    }
    
    
    @ViewBuilder
    private var view: some View {
        List(articles) { article in
            NavigationLink(
                destination: ArticleView(article: article),
                label: {
                    ArticleView(article: article)
                })
        }.navigationTitle("\(articles[0].type)")
    }
}


struct ArticlesListView_Previews: PreviewProvider {
    static var previews: some View {
        ArticlesListView(articles: [
            Article(title: "title", description: "description", type: "type"),
            Article(title: "title", description: "description", type: "type"),
            Article(title: "title", description: "description", type: "type"),
        ])
    }
}
