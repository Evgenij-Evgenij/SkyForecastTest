//
//  DetailedWeatherTableViewController.swift
//  SkyForecast
//
//  Created by Hellen Soloviy on 3/18/19.
//  Copyright © 2019 HellySolovii. All rights reserved.
//

import Foundation
import UIKit

class DetailedWeatherTableViewController: UITableViewController {
    static let identifier = "DetailedWeatherTableViewController"

    //MARK: -
    @IBOutlet weak var highestTempratureLabel: UILabel!
    @IBOutlet weak var lowestTempratureLabel: UILabel!
    
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var visibilityLabel: UILabel!

    var object: DailyWeather!
    
    //MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.tableFooterView = UIView.init()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
            self.setupWithObject()
        }
    }
    
    //MARK: - Private
    private func setupWithObject() {
        highestTempratureLabel.text = "The highest temprature is \(object.apparentTemperatureHigh)"
        lowestTempratureLabel.text = "The lowest temprature is \(object.apparentTemperatureLow)"
        
        windSpeedLabel.text = "Wind speed is aroud \(object.windSpeed)"
        visibilityLabel.text = "Visibility \(object.visibility)"

        self.title = "Forecast"
    }
}
