//
//  ViewController.swift
//  Stepper
//
//  Created by Johan Torroledo on 11/26/14.
//  Copyright (c) 2014 Johan Torroledo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var steepContar: UIStepper!
    @IBOutlet weak var labelContador: UILabel!
    
    @IBAction func steeperValue(sender: UIStepper) {
        labelContador.text = Int(sender.value).description
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        parametrizarLabel()
        parametrizarSteep()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func parametrizarLabel(){
        labelContador.text=""
        labelContador.textColor = UIColor.blueColor()
        
        
        
    }
    
    func parametrizarSteep(){
        steepContar.minimumValue = 1
        steepContar.maximumValue = 100
        steepContar.stepValue = 1
        steepContar.autorepeat = true
        
    }


}

