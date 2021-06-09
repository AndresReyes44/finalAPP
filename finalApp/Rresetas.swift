//
//  Rresetas.swift
//  finalApp
//
//  Created by user190387 on 6/7/21.
//

import Foundation


class Rresetas : Codable {
    var title : String
    var prepTime : String
    var cooktime : String
    var ingredients : String
    var description : String
    
    init(title: String, prepTime: String, cooktime: String, ingredients: String, description: String ) {
        self.title = title
        self.prepTime = prepTime
        self.cooktime = cooktime
        self.ingredients = ingredients
        self.description = description
    }
}
