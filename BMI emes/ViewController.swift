//
//  ViewController.swift
//  BMI emes
//
//  Created by 903-08i on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightText: UITextField!
    @IBOutlet weak var weightText: UITextField!
    
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        self.view.backgroundColor = .lightGray
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateButton(_ sender: Any) {
        if let height = Double(heightText.text!),
            let weight = Double(weightText.text!),
           weight > 0 && height > 0{
            let result: Double = weight / (height * height)
            resultLabel.text = String(format: "%.1f", result)
            
            if weight != 0 && height != 0 {
                switch result {
                case 1..<18.5:
                    ratingLabel.text = "Underweight"
                    self.view.backgroundColor = .yellow
                case 18.5..<25:
                    ratingLabel.text = "Normal"
                    self.view.backgroundColor = .green
                case 25..<30:
                    ratingLabel.text = "0verweight"
                    self.view.backgroundColor = .orange
                default:
                    ratingLabel.text = "Obese"
                    self.view.backgroundColor = .red
                }
            }
        } else {
            ratingLabel.text = "Error"
        }
          
    }

}
