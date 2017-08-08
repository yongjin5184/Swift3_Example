//
//  MasterViewController.swift
//  CustomCell
//
//  Created by Kim on 2017. 8. 6..
//  Copyright © 2017년 Kim. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {
    
    var itemList = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let item1 = ["name":"사과","image":"apple.jpeg","amount" :"3", "value":"4000원"]
        let item2 = ["name":"블루베리","image":"blueberry.jpg","amount" :"6", "value":"7500원"]
        let item3 = ["name":"당근","image":"carrot.jpg","amount" :"6", "value":"13000원"]
        let item4 = ["name":"체리","image":"cherry.png","amount" :"4", "value":"1000원"]
        let item5 = ["name":"포도","image":"grape.jpg","amount" :"2", "value":"5000원"]
        let item6 = ["name":"키위","image":"kiwi.png","amount" :"3", "value":"7000원"]
        let item7 = ["name":"레몬","image":"lemon.png","amount" :"22", "value":"9000원"]
        let item8 = ["name":"라임","image":"lime.jpg","amount" :"1", "value":"31000원"]
        let item9 = ["name":"고기","image":"meat.jpg","amount" :"12", "value":"32000원"]
        let item10 = ["name":"딸기","image":"strawberry.jpg","amount" :"1", "value":"8000원"]
        let item11 = ["name":"토마토","image":"tomato.png","amount" :"7", "value":"2000원"]
        let item12 = ["name":"야채","image":"vegetable.jpg","amount" :"7", "value":"4000원"]
        let item13 = ["name":"멜론","image":"watermelon.png","amount" :"5", "value":"2000원"]
        
        itemList = [item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13]
        
        let backgroundImageView = UIImageView(image: UIImage(named:"background.jpg"))
        backgroundImageView.contentMode = UIViewContentMode.scaleAspectFill
        backgroundImageView.frame = self.tableView.frame
        
        self.tableView.backgroundView = backgroundImageView
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        return itemList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! CustomCell
        
        cell.backgroundColor = UIColor.clear
        
        let dicTemp = itemList[indexPath.row]
        
        cell.nameLabel.text! = dicTemp["name"]!
        cell.amountLabel.text! = dicTemp["amount"]!
        cell.valueLabel.text! = dicTemp["value"]!
        
        cell.imgView.image = UIImage(named: dicTemp["image"]!)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            (segue.destination as! DetailViewController).detailData = itemList[(self.tableView.indexPathForSelectedRow)!.row]
        }
        
    }
    
}
