//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by recep yüksel on 18.02.2025.
//

import UIKit

class detailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : simpson?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
        
    }
    


}
