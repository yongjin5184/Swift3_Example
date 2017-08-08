//
//  DetailViewController.swift
//  CustomCell
//
//  Created by Kim on 2017. 8. 7..
//  Copyright © 2017년 Kim. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var detailData = [String:String]()
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var amountLabel: UILabel!
    @IBOutlet var valueLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        imgView.layer.cornerRadius = 50.0
        imgView.layer.masksToBounds = true
        
        nameLabel.text = detailData["name"]!
        amountLabel.text = detailData["amount"]!
        valueLabel.text = detailData["value"]!
        imgView.image = UIImage(named: detailData["image"]!)
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
