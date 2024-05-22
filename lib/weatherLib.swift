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
        case WeatherType.맑음:
            return UIImage(systemName: "sun.fill.max")
        case WeatherType.눈:
            imageView.tintColor = .systemGray
        return UIImage(systemName: "cloud.snow")
        case WeatherType.흐림:
            imageView.tintColor = .systemGray
            return UIImage(systemName: "cloud.sun")
        case WeatherType.비:
            imageView.tintColor = .tintColor
            return UIImage(systemName: "cloud.rain")
    }
}

func getWeatherDescription(temp: Int, labelValue: UILabel) {
    switch temp {
    case ..<(-10):
        labelValue.text = "이불 밖은 위험해요"
    case -10 ... 10:
        labelValue.text = "두툼힌 패딩을 챙기세요"
    case 11 ... 20:
        labelValue.text = "일교차 조심하세요"
    case 21 ... 30:
        labelValue.text = "여름이 다가오고 있어요"
    default:
        labelValue.text = "핫핫"
    }
}
