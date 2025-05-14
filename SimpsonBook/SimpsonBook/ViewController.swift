//
//  ViewController.swift
//  SimpsonBook
//
//  Created by recep yüksel on 18.02.2025.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [simpson]()
    var chosenSimpson : simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        // simpson object
        let homer = simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "Homer")!)
        
        let marge = simpson(simpsonName: "Marge Simpson", simpsonJob: "Housewife", simpsonImage: UIImage(named: "Marge")!)
        
        let bart = simpson(simpsonName: "Bart Simpson", simpsonJob: "student", simpsonImage: UIImage(named: "bart")!)
        
        let lisa = simpson(simpsonName: "Lisa Simpson", simpsonJob: "student", simpsonImage: UIImage(named: "Lisa")!)
        
        let maggie = simpson(simpsonName: "Maggie Simpson", simpsonJob: "Baby", simpsonImage: UIImage(named: "Maggie")!)
       
        
        mySimpsons.append(homer)
        
        mySimpsons.append(marge)
        
        mySimpsons.append(bart)
        
        mySimpsons.append(lisa)
        
        mySimpsons.append(maggie)
        
       
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetailsVC" {
            
        
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
            
                
            }
            
    }
    
}

