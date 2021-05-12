//
//  Article.swift
//  CrossPlatform
//
//  Created by Ramill Ibragimov on 11.05.2021.
//

import Foundation

struct Article: Identifiable {
    var id = UUID()
    let title: String
    let description: String
    let type: String
}

let techArticles = [
    Article(title: "Some new first tech article", description: "with some tech description", type: "Tech"),
    Article(title: "Some new second tech article", description: "with some tech description", type: "Tech"),
    Article(title: "Some new third tech article", description: "with some tech description", type: "Tech"),
]

let businessArticles = [
    Article(title: "Some new first business article", description: "with some business description", type: "Business"),
    Article(title: "Some new second business article", description: "with some business description", type: "Business"),
    Article(title: "Some new third business article", description: "with some business description", type: "Business"),
]

let sportArticles = [
    Article(title: "Some new first sport article", description: "with some sport description", type: "Sport"),
    Article(title: "Some new second sport article", description: "with some sport description", type: "Sport"),
    Article(title: "Some new third sport article", description: "with some sport description", type: "Sport"),
]
