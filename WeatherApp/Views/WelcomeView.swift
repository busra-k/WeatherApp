//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Büşra Kocakuşaklı on 5.07.2023.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    
    var body: some View {
        VStack {
            
            VStack(spacing: 20) {
                Text("Hava Durumu uygulamasına Hoşgeldiniz")
                    .bold().font(.title)
                Text("Lütfen mevcut konumuzu paylaşın").padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
