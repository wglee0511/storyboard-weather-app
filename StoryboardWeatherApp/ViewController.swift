//
//  ViewController.swift
//  StoryboardWeatherApp
//
//  Created by racoon on 5/22/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var weatherImageValue: UIImageView!
    @IBOutlet weak var weatherTextValue: UILabel!
    @IBOutlet weak var weatherTempValue: UILabel!
    @IBOutlet weak var weatherDescriptionValue: UILabel!
    @IBOutlet weak var weatherImageBackgroundImageValue: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let weatherValue = [WeatherType.rain, WeatherType.snow, WeatherType.cloudy, WeatherType.clear].randomElement() ?? WeatherType.clear
        let tempValue = Int.random(in: -50 ... 50)
        let imageValue = getWeatherImage(weatherValue: weatherValue, imageView: weatherImageValue)
        
        weatherImageValue.image = imageValue
        weatherTextValue.text = "\(weatherValue.rawValue)"
        weatherImageBackgroundImageValue.image = UIImage(named: "image_seoul")
        weatherDescriptionValue.text = weatherValue.weatherDescription(temp: tempValue)
    }


}

