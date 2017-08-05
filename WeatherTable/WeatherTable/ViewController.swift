//
//  ViewController.swift
//  WeatherTable
//
//  Created by Kim on 2017. 8. 5..
//  Copyright © 2017년 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource {
    
    var datalist:[[String:String]] = [[:]]
   
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        var dicTemp = datalist[indexPath.row]
        
        cell.textLabel!.text = dicTemp["지역"]
        
        let weatherStr = dicTemp["날씨"]
        
        cell.detailTextLabel!.text = weatherStr
        

        if weatherStr == "맑음"{
            cell.imageView!.image = UIImage(named : "sunny.png")
        }else if(weatherStr == "비"){
            cell.imageView!.image = UIImage(named : "rain.png")
        }else if(weatherStr == "흐림"){
            cell.imageView!.image = UIImage(named : "cloudy.png")
        }else if(weatherStr == "눈"){
            cell.imageView!.image = UIImage(named : "snow.png")
        }else{
            cell.imageView!.image = UIImage(named : "blizzard.png")
        }
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let dic1 = ["지역":"한국", "날씨":"비"]
        let dic2 = ["지역":"대만", "날씨":"맑음"]
        let dic3 = ["지역":"태국", "날씨":"흐림"]
        let dic4 = ["지역":"일본", "날씨":"눈"]
        let dic5 = ["지역":"미국", "날씨":"우박"]
        let dic6 = ["지역":"캐나다", "날씨":"맑음"]
        
        datalist = [dic1, dic2, dic3, dic4, dic5, dic6]
        
//        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

