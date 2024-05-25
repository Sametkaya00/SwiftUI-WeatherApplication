//
//  Welcome.swift
//  WeatherApp
//
//  Created by samet kaya on 8.04.2024.
//

import SwiftUI
import CoreLocationUI

struct Welcome: View {
    @EnvironmentObject var locationmanager:LocationManager
    
    var body: some View {
        VStack{
            VStack(spacing:20, content:{
                Text("Hava durumu uygulamamıza hoş geldiniz")
                    .font(.title)
                    .bold()
                Text(" hava durmu verilerini size göstermek için kordinat bilgilerinize erişmemize izin veriniz.")
                   
            })
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation)
            {
                locationmanager.requestLocation()
            }
            .cornerRadius(20)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    Welcome()
}
