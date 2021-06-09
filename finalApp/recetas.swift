//
//  recetas.swift
//  finalApp
//
//  Created by user190387 on 6/7/21.
//

import Foundation
class receta
{
    
    
    private var recetaList : [Rresetas] = []
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
    //init(){
      //  recetaList = recetaList.sorted(by: { $0.title < $1.title })
    //}
        
}

