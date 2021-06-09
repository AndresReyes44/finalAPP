//
//  recetaServices.swift
//  finalApp
//
//  Created by user190387 on 6/8/21.
//

import Foundation

class recetaServices{
    public typealias UpdateListClosure = ([Rresetas]) -> Void
    
    func makeGetCall(_ recetaList: [Rresetas], _ handler: @escaping UpdateListClosure) {
        let recetasEndpoint: String = "https://social-chef-backend.herokuapp.com/recipes"
        guard let url = URL(string: recetasEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        let task = session.dataTask(with: urlRequest) {
            (data, response, error) in
            guard error == nil else {
                print("error calling GET on /scores/top10")
                print(error!)
                return
            }
            
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            do {
                guard let recetasResponse = try JSONSerialization.jsonObject(with: responseData, options: [])
                        as? [[String: Any]] else {
                    print("error trying to convert data to JSON")
                    return
                }
              //  var dateForm = DateFormatter()
                var recetaList : [Rresetas] = []
                for (index, element) in recetasResponse.enumerated() {
                    print(index, ":", element)
                    //                        let score = Score(name: "GROGU", date: Date(), points: 200)
                    //                        let score = Score(name: element["name"] as! String, date: dateForm.date(from: element["date"] as! String) ?? Date(), points: element["points"] as! Int)
                    
                    let title:String = (element["title"] as? String)!
                    let description:String = ( element["description"] as? String)!
                    let prepTime:String = ( element["prepTime"] as? String)!
                    let cooktime:String = ( element["cooktime"] as? String)!
                    let ingredients:String = ( element["ingredients"] as? String)!
                    
                    let recetas = Rresetas(title: title, prepTime: prepTime, cooktime: cooktime, ingredients: ingredients, description: description)
                    
                    
                    recetaList.append(recetas)
                }
                
                handler(recetaList)
            } catch  {
                print("error trying to convert data to JSON")
                return
            }
        }
        task.resume()
    }

    }

