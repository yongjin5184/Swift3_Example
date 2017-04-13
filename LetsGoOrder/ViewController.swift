//
//  ViewController.swift
//  LetsGoOrder
//
//  Created by Kim on 2017. 3. 23..
//  Copyright © 2017년 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate, UITabBarDelegate {

    @IBOutlet var priceTextField1:UITextField!
    @IBOutlet var priceTextField2:UITextField!
    @IBOutlet var priceTextField3:UITextField!
    @IBOutlet var priceTextField4:UITextField!
    @IBOutlet var volumeTextField1:UITextField!
    @IBOutlet var volumeTextField2:UITextField!
    @IBOutlet var volumeTextField3:UITextField!
    @IBOutlet var volumeTextField4:UITextField!
    @IBOutlet var peopleTextField:UITextField!
    @IBOutlet var sumLabel1: UILabel!
    @IBOutlet var sumLabel2: UILabel!
    @IBOutlet var sumLabel3: UILabel!
    @IBOutlet var sumLabel4: UILabel!
    @IBOutlet var resultTextView:UITextView!
    @IBOutlet var peopleTextView:UITextView!
    @IBOutlet var menuTabBarItem:UITabBarItem!
    @IBOutlet var menuTabBar:UITabBar!
    
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("ddd")
        print(item)
        
    }
    
    let menu = Menu()
    let orderManager = OrderManager()
    
    var peopleArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTabBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sum1(_ sender:Any)
    {
        menu._init(Int(priceTextField1.text!)!,Int(volumeTextField1.text!)!)
        sumLabel1.text = "\(orderManager.multiplyOrder(menu))원"
    }
    
    @IBAction func sum2(_ sender:Any)
    {
        menu._init(Int(priceTextField2.text!)!,Int(volumeTextField2.text!)!)
        sumLabel2.text = "\(orderManager.multiplyOrder(menu))원"
    }
    
    @IBAction func sum3(_ sender:Any)
    {
        menu._init(Int(priceTextField3.text!)!,Int(volumeTextField3.text!)!)
        sumLabel3.text = "\(orderManager.multiplyOrder(menu))원"
    }
    
    @IBAction func sum4(_ sender:Any)
    {
        menu._init(Int(priceTextField4.text!)!,Int(volumeTextField4.text!)!)
        sumLabel4.text = "\(orderManager.multiplyOrder(menu))원"
    }
    
    @IBAction func multiplyOrder(_ sender:Any)
    {
        var sumArray = [Int]()
        if let sumLabel1 = sumLabel1.text, !sumLabel1.isEmpty && sumLabel1 != "금액"{
            let sumLabel1 = sumLabel1.components(separatedBy: "원").joined(separator: "")
            sumArray.append(Int(sumLabel1)!)
        }
        
        if let sumLabel2 = sumLabel2.text, !sumLabel2.isEmpty && sumLabel2 != "금액"{
            let sumLabel2 = sumLabel2.components(separatedBy: "원").joined(separator: "")
            sumArray.append(Int(sumLabel2)!)
        }
        
        if let sumLabel3 = sumLabel3.text, !sumLabel3.isEmpty && sumLabel3 != "금액"{
            let sumLabel3 = sumLabel3.components(separatedBy: "원").joined(separator: "")
            sumArray.append(Int(sumLabel3)!)
        }
        
        if let sumLabel4 = sumLabel4.text, !sumLabel4.isEmpty && sumLabel4 != "금액"{
            let sumLabel4 = sumLabel4.components(separatedBy: "원").joined(separator: "")
            sumArray.append(Int(sumLabel4)!)
        }
        
        let sum = orderManager.sumOrder(sumArray)
        print(sum)
        resultTextView.text = "총 \(sum) 원 입니다."
        sumArray.removeAll()
    }
    
    @IBAction func sumPeople(_ sender:Any){
        
        peopleArray.append(peopleTextField.text!)
        let peopleResult = peopleArray.joined(separator: ",")
        //let stringRepresentation = peopleArray.description // "[1, 2, 3]"
        //peopleTextView.text = stringRepresentation
        peopleTextView.text = peopleResult
        peopleTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let aSet = NSCharacterSet(charactersIn:"0123456789").inverted
        let compSepByCharInSet = string.components(separatedBy: aSet)
        let numberFiltered = compSepByCharInSet.joined(separator: "")
        return string == numberFiltered
    }

}

