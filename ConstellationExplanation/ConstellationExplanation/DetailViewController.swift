//
//  DetailViewController.swift
//  ConstellationExplanation
//
//  Created by Kim on 2017. 8. 9..
//  Copyright © 2017년 Kim. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBAction func backButtonAction(_ sender: AnyObject) {
        self.navigationController?.popViewController(animated: true)
        //popToRootViewController
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  

}
