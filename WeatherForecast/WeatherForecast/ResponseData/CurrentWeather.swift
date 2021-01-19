//
//  CurrentWeatherData.swift
//  WeatherForecast
//
//  Created by sole on 2021/01/19.
//

import Foundation

struct CurrentWeather: Codable {
    let coord: Coord
    let weatherIcon: [WeatherIcon]
    let temperature: Temperature
    let cityName: String
    
    enum CodingKeys: String, CodingKey {
        case coord
        case weatherIcon = "weather"
        case temperature = "main"
        case cityName = "name"
    }
}
