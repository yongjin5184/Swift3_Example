//
//  FourthViewController.swift
//  TabbarEx
//
//  Created by Kim on 2017. 7. 26..
//  Copyright © 2017년 Kim. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    @IBAction func buttonAction(_ sender: AnyObject) {
        resultLabel.text = "4번눌림"
    }
    
    @IBOutlet var resultLabel: UILabel!
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
