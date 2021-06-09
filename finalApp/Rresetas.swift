//
//  Rresetas.swift
//  finalApp
//
//  Created by user190387 on 6/7/21.
//

import Foundation

//class Rresetas
//{
    //var Nombre: String = " "
    //var prepareTime: String = " "
    //var time: String = " "
    //var ingredientes: String = " "
    //var description: String = " "
    
//}
class Rresetas : Codable {
    var Nombre : String
    var prepareTime : String
    var cooktime : String
    var ingredientes : String
    var description : String
    
    init(Nombre: String, prepareTime: String, cooktime: String, ingredientes: String, description: String ) {
        self.Nombre = Nombre
        self.prepareTime = prepareTime
        self.cooktime = cooktime
        self.ingredientes = ingredientes
        self.description = description
    }
}
