//
//  WeatherCell.swift
//  WeatherTable
//
//  Created by Kim on 2017. 8. 15..
//  Copyright © 2017년 Kim. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var weatherLabel: UILabel!
    @IBOutlet var temperatureLabel: UILabel!
    @IBOutlet var imgView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
