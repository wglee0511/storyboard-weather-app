//
//  weather.swift
//  StoryboardWeatherApp
//
//  Created by racoon on 5/22/24.
//

import Foundation
import UIKit

enum WeatherType: String {
    case clear = "맑음"
    case rain = "비"
    case snow = "눈"
    case cloudy = "흐림"
    
    var image: UIImage? {
        switch self {
        case WeatherType.clear:
            return UIImage(systemName: "sun.min")
        case WeatherType.snow:
            return UIImage(systemName: "cloud.snow")
        case WeatherType.cloudy:
            return UIImage(systemName: "cloud.sun")
        case WeatherType.rain:
            return UIImage(systemName: "cloud.rain")
        }
    }
    
    func weatherDescription(temp: Int) -> String {
        switch temp {
        case ..<(-10):
            return "이불 밖은 위험해요"
        case -10 ... 10:
            return "두툼힌 패딩을 챙기세요"
        case 11 ... 20:
            return "일교차 조심하세요"
        case 21 ... 30:
            return "여름이 다가오고 있어요"
        default:
            return "핫핫"
        }
    }
    
}
