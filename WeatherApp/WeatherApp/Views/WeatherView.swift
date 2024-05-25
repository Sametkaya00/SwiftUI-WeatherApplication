//
//  WeatherView.swift
//  WeatherApp
//
//  Created by samet kaya on 8.04.2024.
//

import SwiftUI

struct WeatherView: View {
    var weather:ResponseBody
   
    var body: some View {
 
        VStack(alignment:.leading,spacing: 10){
            Text("\(weather.name)")
                .font(.system(size: 36,weight: .semibold))
                .padding(.leading,20)
            Text("\(Date().formatted(.dateTime.month().day()))")
                .font(.system(size: 20))
                .opacity(0.5)
                .padding(.leading,25)
            Text(weather.weather[0].description)
                .font(.system(size: 20))
                .opacity(0.5)
                .padding(.leading,25)
            HStack{
               
                WeatherImageView(weather: weather)
                
                VStack{
                    Text("\(weather.main.feelLike.roundDouble())°")
                        .font(.system(size: 79,weight: .semibold))
                    Text("\(weather.weather[0].main)")
                        .font(.system(size: 24))
                }
                .padding(.leading)
                Spacer()
            }
            .padding()
            
           
        
            
            
            Spacer()
            CardView(icon: "thermometer.sun" , text: "Min temp", value: weather.main.tempMin.roundDouble()+"°")
            CardView(icon: "thermometer.sun" , text: "Max temp", value: weather.main.tempMax.roundDouble()+"°")
            CardView(icon: "wind", text: "Wind speed", value: weather.wind.speed.roundDouble()+"m/s")
            CardView(icon: "humidity", text: "Humidity", value: weather.main.humidity.roundDouble()+"%")
            
           
        }
        .padding(.bottom,50)
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(LinearGradient(colors: [Color("Color")], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}

#Preview {
    WeatherView(weather: previewWeather!)
}

extension Double{
    func roundDouble()->String{
        return String(format:"%.0f",self)
    }
}


struct CardView:View{
    var icon:String
    var text:String
    var value:String
    
    var body: some View{
        HStack(spacing:20){
           Image(systemName: icon)
                .imageScale(.large)
                .frame(width: 60,height: 60)
                .background(.white.opacity(0.6))
                .cornerRadius(12)
            
            Text(text)
                .font(.system(size: 15))
            
            Spacer()
            
            Text("\(value)")
            
                .padding()
            
        }
      
        .frame(maxWidth:.infinity)
        .frame(height:60)
        .background(.white.opacity(0.5))
        .cornerRadius(8)
    }
}


