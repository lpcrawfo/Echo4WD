//
//  FiveViewController.swift
//  Echo4WD
//
//  Created by LUKE PETER CRAWFORD on 16/05/2017.
//  Copyright © 2017 LUKE PETER CRAWFORD. All rights reserved.
//

import UIKit

class FiveViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var btnBack2: UIButton!
    
    @IBAction func btnBack(_ sender: Any) {
        performSegue(withIdentifier: "back1" , sender: self)

    }
    
    @IBAction func btnBack2(_ sender: Any) {
        performSegue(withIdentifier: "back" , sender: self)

    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
