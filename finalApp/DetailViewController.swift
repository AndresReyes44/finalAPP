//
//  DetailViewController.swift
//  finalApp
//
//  Created by user190387 on 6/7/21.
//

import UIKit

class DetailViewController: UIViewController {
   
    @IBOutlet weak var nombreLabel: UILabel!
    @IBOutlet weak var prepareTimeLabel: UILabel!
    
    @IBOutlet weak var cookTimeLabel: UILabel!
    @IBOutlet weak var descripcionTextView: UITextView!
    
    @IBOutlet weak var ingredientesLabel: UILabel!
    func configureView() {
            
        if let myReceta = detailItem {
             nombreLabel.text = myReceta.title
             prepareTimeLabel.text = myReceta.prepTime
             descripcionTextView.text = myReceta.cooktime
             cookTimeLabel.text = myReceta.description
            ingredientesLabel.text = myReceta.ingredients
         }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            configureView()
        }

        var detailItem : Rresetas? {
            didSet {
                
            }
        }
    @IBAction func cancel(sender: AnyObject){
        dismiss(animated: false, completion: nil)
    }

}
