//
//  ViewController.swift
//  BmiCalculator
//
//  Created by Vuppala,Lalith on 11/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var weightOL: UITextField!
    
    
    @IBOutlet weak var heightOL: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcBTN(_ sender: UIButton) {
        var weight = Double(weightOL.text!)!
        
        var BMI = 0.0
        var image = ""
        var height = Double(heightOL.text!)!
        
        var BMical = (weight / height*height) * 703
        if(BMI < 18 ){
            image = "healthy"
        }
        else if ( BMI >= 25.9 && BMI <= 26.9){
            
            image = "healthy1"
        }
        else if(BMI <=  35.9 && BMI <=  39.0){
            image = "nothealthy"
        }
        else {
            image = "nothhealthy1"
        }
        
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            var transition =  segue.identifier
            
            if transition == "segue"{
                
                var destination = segue.identifier as!
                ResultViewController
                
                destination.weight = weightOL.text!
                destination.height = heightOL.text!
                destination.BMI = BMI
                destination.image = image
                
                
            }
        }
        
        
    }
    
}
