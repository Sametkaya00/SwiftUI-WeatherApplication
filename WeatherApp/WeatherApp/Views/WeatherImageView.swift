//
//  WeatherImageView.swift
//  WeatherApp
//
//  Created by samet kaya on 15.04.2024.
//

import SwiftUI

struct WeatherImageView: View {
    var weather:ResponseBody
    var body: some View {
        
      
       
            if weather.weather[0].description == "clear sky"{
                Image("clearsky")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
            else if weather.weather[0].description == "few clouds" {
                Image("fewclouds")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
            else if weather.weather[0].description=="overcast clouds"{
                Image("scatteredclouds")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
            else if weather.weather[0].description == "scattered clouds" || weather.weather[0].description == "broken clouds"{
                Image("scatteredclouds")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
            else if weather.weather[0].description == "rain"{
                Image("moderaterain")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
        else if weather.weather[0].description == "light rain"{
            Image("moderaterain")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .cornerRadius(20)
        }
            else if weather.weather[0].description == "thunderstorm"{
                Image("thunderstorm")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
            else if weather.weather[0].description == "moderate rain"{
                Image("moderaterain")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
            
            else if weather.weather[0].description == "snow"{
                Image("snow")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
            else if weather.weather[0].description == "mist"{
                Image("mist")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
            else if weather.weather[0].description=="smoke"{
                Image("mist")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200)
                    .cornerRadius(20)
            }
            else{
                Text("Resim Yükleniyorr...")
            }
            
            
        }
    }

#Preview {
    WeatherImageView(weather:previewWeather!)
}
