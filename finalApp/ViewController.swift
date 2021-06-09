//
//  ViewController.swift
//  finalApp
//
//  Created by user190387 on 6/7/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var tableView: UITableView!
    // MARK: Properties
    @IBOutlet weak var myTableView: UITableView!
    var detailViewController : DetailViewController? = nil
        var myReceta = receta()
    // MARK: Table View
      /*  func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
             return myReceta.recetaList.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            
            cell.textLabel!.text = myReceta.recetaList[indexPath.row].Nombre
            print("***"+myReceta.recetaList[indexPath.row].Nombre+"***")
            cell.accessoryType = .disclosureIndicator
            return cell
        }
    // MARK: Segues
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showDetail" {
                if let indexPath = tableView.indexPathForSelectedRow {
                     let selectedReceta : Rresetas = myReceta.recetaList[indexPath.row]
                    let controller = (segue.destination as! DetailViewController)
                    controller.detailItem = selectedReceta
                }
            }
        }
 */
    func configureView() {
        myReceta.loadData {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureView()
        tableView.reloadData()
        print("Print from top10view ", recetadata!.getList())
    }
    
    var recetadata : receta? {
        didSet {

        }
    }
    
    // MARK: Table View
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myReceta.getList().count
    }
    
    let dateForm = DateFormatter()
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var str = ""
      //  str += dateForm.string(from: (top10?.getList()[indexPath.row].date)!)
        str += " " + ((myReceta.getList()[indexPath.row].title))
        str += " " + String((myReceta.getList()[indexPath.row].description))
        cell.textLabel!.text = str
        
        return cell
    }
    
}
