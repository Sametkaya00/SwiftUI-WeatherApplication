//
//  Home.swift
//  WeatherApp
//
//  Created by samet kaya on 8.04.2024.
//

import SwiftUI

struct Home: View {
    @StateObject var locationManager=LocationManager()
    var weatherManager = WeatherManager()
   
    @State var weather:ResponseBody?
   
    var body: some View {
        VStack{
            if let location = locationManager.location
            {
                if let weather = weather {
                    WeatherView(weather: weather)
                }else {
                    ProgressView()
                        .task {
                            do {
                                weather = try await weatherManager.getCurrentWather(latitude: location.latitude, longitude: location.longitude)
                               
                            } catch {
                                print("Something went wrong! \(error)")
                            }
                        }
                }
            }
            else{
                if locationManager.isLoading{
                    ProgressView()
                }
                else{
                    Welcome()
                        .environmentObject(locationManager)
                }
           
            }
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(LinearGradient(colors: [Color("Color")], startPoint: .topLeading, endPoint: .bottomTrailing))
   
    }
    
}

#Preview {
    ContentView()
}





