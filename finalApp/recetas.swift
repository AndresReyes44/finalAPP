//
//  recetas.swift
//  finalApp
//
//  Created by user190387 on 6/7/21.
//

import Foundation
class receta
{
    //var recetaList: [Rresetas] = []
    
    //init()
    //{
      //  var newReceta = Rresetas()
       // newReceta.Nombre = "Tacos de canasta"
       // newReceta.prepareTime = "25 min"
       // newReceta.time = "25 min"
       // newReceta.ingredientes = "1 canasta y 2 tacos"
        //newReceta.description = "Los tradicionales mexicanos tacos de canasta"
        
        //recetaList.append(newReceta)
        //newReceta = Rresetas()
       // newReceta.Nombre = "Arroz con leche"
       // newReceta.prepareTime = "25 min"
       // newReceta.time = "25 min"
        //newReceta.ingredientes = "1 de arroz y 1 de leche"
        //newReceta.description = "Exquisito postre de arroz con leche"
        
        
        //recetaList.append(newReceta)
        
        //recetaList = recetaList.sorted(by: { $0.Nombre < $1.Nombre })
    
    var recetaList: [Rresetas] = []
    let service = recetaServices()
    
    func getList() -> [Rresetas] {
        return recetaList
    }
    func loadData(_ handler: @escaping () -> Void) {
        service.makeGetCall(recetaList) {
            (RresetaList) in
            self.recetaList = RresetaList
            
            handler()
        }
    }
    init(){
        recetaList = recetaList.sorted(by: { $0.Nombre < $1.Nombre })
    }
        
}

