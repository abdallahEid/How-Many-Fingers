//
//  ViewController.swift
//  How Many Fingers ?
//
//  Created by Abdallah Eid on 9/15/17.
//  Copyright © 2017 TripleApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var textField: UITextField!
    
    @IBAction func guessButton(_ sender: Any) {
        
        let myRand = arc4random_uniform(6)
        
        if String(myRand) == textField.text {
            
            resultLabel.text = "You're Right!"
            
        }else{
            
            resultLabel.text = "You're Wrong, It was \(myRand)"
            
        }
        
    }
    
    @IBOutlet var resultLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

