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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let weatherValue = WeatherType.비
        let tempValue = 11
        
        let imageValue = getWeatherImage(weatherValue: weatherValue, imageView: weatherImageValue)
        weatherImageValue.image = imageValue
        weatherTextValue.text = "\(weatherValue)"
        
        getWeatherDescription(temp: tempValue, labelValue: weatherDescriptionValue)
        
    }


}

