//
//  ViewController.swift
//  Stormy
//
//  Created by Pasan Premaratne on 5/8/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentHumidityLabel: UILabel!
    @IBOutlet weak var currentPrecipitationLabel: UILabel!
    @IBOutlet weak var currentWeatherIcon: UIImageView!
    @IBOutlet weak var currentSummaryLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    let client = DarkSkyAPIClient()

    override func viewDidLoad() {
        super.viewDidLoad()
        getCurrentWeather()
        
    }
    
    func displayWeather(using viewModel: CurrentWeatherViewModel) {
        currentTemperatureLabel.text = viewModel.temperature
        currentHumidityLabel.text = viewModel.humidity
        currentPrecipitationLabel.text = viewModel.precipitationProbability
        currentSummaryLabel.text = viewModel.summary
        currentWeatherIcon.image = viewModel.icon
    }
    
    
    @IBAction func getCurrentWeather() {
        toogleRefreshAnimation(on: true)
        client.getCurrentWeather(at: Coordinate.alcatrazIsland) { [unowned self] currentWeather, error in
            if let currentWeather = currentWeather {
                let viewModel = CurrentWeatherViewModel(model: currentWeather)
                self.displayWeather(using: viewModel)
                self.toogleRefreshAnimation(on: false)
            }
        }
    }
    
    func toogleRefreshAnimation(on: Bool) {
        refreshButton.isHidden = on
        
        if on {
            activityIndicator.startAnimating()
        } else {
            activityIndicator.stopAnimating()
        }
    }
}


















