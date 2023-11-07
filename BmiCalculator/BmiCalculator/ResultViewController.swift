//
//  ResultViewController.swift
//  BmiCalculator
//
//  Created by Vuppala,Lalith on 11/2/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var weightOL: UILabel!
    
   
    @IBOutlet weak var heightOL: UILabel!
    
    
    @IBOutlet weak var BMIOL: UILabel!
    
    
    @IBOutlet weak var imageOL: UIImageView!
    var weight = ""
    var height = ""
    var image = ""
    var BMI = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        weightOL.text!  += weight
        heightOL.text! += height
        imageOL.image = UIImage(named: image)
        
    }
    
    

}
