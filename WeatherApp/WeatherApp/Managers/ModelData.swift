//
//  ModelData.swift
//  WeatherApp
//
//  Created by samet kaya on 8.04.2024.
//

import SwiftUI

func load<T: Decodable>(_ data: Data) -> T {
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse data as \(T.self):\n\(error)")
    }
}

var previewWeather: ResponseBody? = ResponseBody(
    coord: ResponseBody.CordinatreResponse(lon: 0.0, lat: 0.0),
    weather: [ResponseBody.WeatherResponse(id: 0.0, main: "Clear", description: "sdaf", icon: "01d")],
    main: ResponseBody.MainResponse(temp: 20.0, feels_like: 20.0, temp_min: 15.0, temp_max: 25.0, pressure: 1013.0, humidity: 50.0 ),
    name: "Example City",
    wind: ResponseBody.WindResponse(speed: 5.0, deg: 180.0)
)

func saveWeatherDataToFile(data: Data) {
    guard let documentDirectoryUrl = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
        print("Document directory not found")
        return
    }
   
}

