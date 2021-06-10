//
//  ViewController.swift
//  finalApp
//
//  Created by user190387 on 6/7/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    
    //@IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var myTableView: UITableView!
    //var detailViewController : DetailViewController? = nil
    var myReceta: receta  = receta()
    
    func configureView() {
        myReceta.loadData {
            DispatchQueue.main.async {
                self.myTableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
        myTableView.reloadData()
        print("Print from ViewController ", myReceta.getList())
    }
    
   // var recetadata : receta? {
     //   didSet {

       // }
    //}
    
    // MARK: Table View
    func numberOfSections(in recetatableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myReceta.getList().count
    }
    
    //let dateForm = DateFormatter()
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var str = ""
      //  str += dateForm.string(from: (top10?.getList()[indexPath.row].date)!)
        str += ((myReceta.getList()[indexPath.row].title))
        str += " " + ((myReceta.getList()[indexPath.row].description))
       // str += " " + ((myReceta?.getList()[indexPath.row].description))
        cell.textLabel!.text = str
        
        return cell
    }
    
}
