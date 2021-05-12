//
//  SideBarView.swift
//  CrossPlatform (macOS)
//
//  Created by Ramill Ibragimov on 12.05.2021.
//

import SwiftUI

struct SideBarView: View {
    @ViewBuilder
    var body: some View {
        List() {
            NavigationLink(
                destination: ArticlesListView(articles: techArticles),
                label: {
                    Label("Tech", systemImage: "desktopcomputer")
                })
            NavigationLink(
                destination: ArticlesListView(articles: businessArticles),
                label: {
                    Label("Business", systemImage: "dollarsign.circle")
                })
            NavigationLink(
                destination: ArticlesListView(articles: sportArticles),
                label: {
                    Label("Sport", systemImage: "sportscourt")
                })
        }
        .navigationTitle("Articles")
        .listStyle(SidebarListStyle())
    }
}

struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
