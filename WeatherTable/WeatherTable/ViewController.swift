//
//  ViewController.swift
//  WeatherTable
//
//  Created by Kim on 2017. 8. 5..
//  Copyright © 2017년 Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,XMLParserDelegate {
    
    var datalist:[[String:String]] = []
    var detaildata:[String:String] = [:]
    var elementTemp:String = ""
    var blank:Bool = false // 공백 처리
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let baseURL = "https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.xml"
        let parser = XMLParser(contentsOf: URL(string: baseURL)!)
        
        parser!.delegate = self
        parser!.parse()
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        blank = true
        elementTemp = elementName
        
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        if blank == true && elementTemp != "local" && elementTemp != "weatherinfo" {
            detaildata[elementTemp] = string
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        if elementName == "local"{
            datalist += [detaildata]
            print(datalist)
        }
        blank = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datalist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WeatherCell
        
        var dicTemp = datalist[indexPath.row]
        
        let weatherStr = dicTemp["weather"]
        cell.countryLabel.text = dicTemp["country"]
        cell.weatherLabel.text = weatherStr
        cell.temperatureLabel.text = dicTemp["temperature"]

        if weatherStr == "맑음"{
            cell.imgView!.image = UIImage(named : "sunny.png")
        }else if(weatherStr == "비"){
            cell.imgView!.image = UIImage(named : "rain.png")
        }else if(weatherStr == "흐림"){
            cell.imgView!.image = UIImage(named : "cloudy.png")
        }else if(weatherStr == "눈"){
            cell.imgView!.image = UIImage(named : "snow.png")
        }else{
            cell.imgView!.image = UIImage(named : "blizzard.png")
        }
        
        return cell
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

