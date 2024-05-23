//
//  weather.swift
//  StoryboardWeatherApp
//
//  Created by racoon on 5/22/24.
//

import Foundation
import UIKit

func getWeatherImage(weatherValue: WeatherType, imageView: UIImageView) -> UIImage? {
    switch weatherValue {
        case WeatherType.clear:
            imageView.tintColor = .orange
            break
        case WeatherType.snow:
            imageView.tintColor = .systemGray2
            break
        case WeatherType.cloudy:
            imageView.tintColor = .systemGray2
            break
        case WeatherType.rain:
            imageView.tintColor = .tintColor
            break
    }
    
    return weatherValue.image
}
