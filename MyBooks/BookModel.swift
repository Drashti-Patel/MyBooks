//
//  BookModel.swift
//  MyBooks
//
//  Created by Drashti Jaykumar Jasani on 29.11.2021.
//

import Foundation
import SwiftUI

struct BookModel : Identifiable {
    
    var id = UUID()
    var title: String
    var elements : [BookElements]
}

struct BookElements : Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var description: String
}

//novels

let novel1 = BookElements(name: "Desert of kutch", imageName: "desert", description: "good place to explore")
let novel2 = BookElements(name: "Antarctica", imageName: "anIsland", description: "coldest place")
let novel3 = BookElements(name: "Mangroves", imageName: "myForest", description: "lots of greenary")

let favouriteNovel = BookModel(title: "favourite Novel", elements: [novel1,novel2,novel3])

//movies
let movie1 = BookElements(name: "Coconut", imageName: "myKerala", description: "state of beaches")
let movie2 = BookElements(name: "Full moon", imageName: "nightScene", description: "nice moon")
let movie3 = BookElements(name: "Nature", imageName: "image", description: "beautiful natural place")

let favouriteMovie = BookModel(title: "favourite Movie", elements: [movie1,movie2,movie3])

let myFavourites = [favouriteNovel,favouriteMovie]

