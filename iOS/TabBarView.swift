//
//  TabBarView.swift
//  CrossPlatform (iOS)
//
//  Created by Ramill Ibragimov on 11.05.2021.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            ArticlesListView(articles: techArticles)
                .tabItem {
                    Image(systemName: "desktopcomputer")
                    Text("Tech")
                }
                .tag(0)
            ArticlesListView(articles: businessArticles)
                .tabItem {
                    Image(systemName: "dollarsign.circle")
                    Text("Business")
                }
                .tag(1)
            ArticlesListView(articles: sportArticles)
                .tabItem {
                    Image(systemName: "sportscourt")
                    Text("Sport")
                }
                .tag(2)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
