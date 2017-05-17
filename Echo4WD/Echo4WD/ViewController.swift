//
//  ViewController.swift
//  Echo4WD
//
//  Created by LUKE PETER CRAWFORD on 16/05/2017.
//  Copyright © 2017 LUKE PETER CRAWFORD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnLog: UIButton!
    @IBOutlet weak var btnCreate: UIButton!
    
    
    //Takes the User to the next screen
    
    @IBAction func btnLog(_ sender: Any) {
        performSegue(withIdentifier: "segue" , sender: self)
    }
       
    @IBAction func btnCreate(_ sender: Any) {
        performSegue(withIdentifier: "segue1" , sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
}

