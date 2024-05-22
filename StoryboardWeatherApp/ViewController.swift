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
        let weatherValue = [WeatherType.비, WeatherType.눈, WeatherType.맑음, WeatherType.흐림].randomElement() ?? WeatherType.맑음
        let tempValue = Int.random(in: -50 ... 50)
        let imageValue = getWeatherImage(weatherValue: weatherValue, imageView: weatherImageValue)
        
        weatherImageValue.image = imageValue
        weatherTextValue.text = "\(weatherValue)"
        weatherImageBackgroundImageValue.image = UIImage(named: "image_seoul")
        getWeatherDescription(temp: tempValue, labelValue: weatherDescriptionValue)
        
    }


}

