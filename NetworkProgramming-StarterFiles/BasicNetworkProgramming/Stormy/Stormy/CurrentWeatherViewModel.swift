//
//  CurrentWeatherViewModel.swift
//  Stormy
//
//  Created by Eli Cobler on 4/26/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation
import UIKit

struct CurrentWeatherViewModel {
    let temperature: String
    let humidity: String
    let precipitationProbability: String
    let summary: String
    let icon: UIImage
    
    init(model: CurrentWeather) {
        let roundedTempature = Int(model.temperature)
        self.temperature = "\(roundedTempature)º"
        
        let humidityPercentValue = Int(model.humidity * 100)
        self.humidity = "\(humidityPercentValue)%"
        
        let precipPercentValue = Int(model.precipitationfProbability * 100)
        self.precipitationProbability = "\(precipPercentValue)%"
        
        self.summary = model.summary
        
        let weatherIcon = WeatherIcon(iconString: model.icon)
        self.icon = weatherIcon.image
    }
}
















































