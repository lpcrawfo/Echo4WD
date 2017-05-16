//
//  ThirdViewController.swift
//  Echo4WD
//
//  Created by LUKE PETER CRAWFORD on 16/05/2017.
//  Copyright © 2017 LUKE PETER CRAWFORD. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    @IBOutlet weak var btnCreate: UIButton!
    @IBOutlet weak var btnBack: UIButton!
    
    @IBAction func btnCreate(_ sender: Any) {
        performSegue(withIdentifier: "segueCreate" , sender: self)
    }
    
    @IBAction func btnBack(_ sender: Any) {
        performSegue(withIdentifier: "segu1" , sender: self)
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
