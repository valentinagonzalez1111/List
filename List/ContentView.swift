//
//  ContentView.swift
//  List
//
//  Created by Apprenant 18 on 20/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                List(climas) { weather in
                    NavigationLink(destination: {
                        Meteo(weather: weather)
                    }, label: {
                        HStack {
                            Image(systemName: weather.climaIcon)
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.black)
                            Text(weather.clima)
                                .font(.body)
                                .fontWeight(.bold)
                        }
                    })
                }
            }
            .navigationBarTitle("Weather")
        }
    }
}
    struct Weather: Identifiable {
        var id = UUID()
        var clima: String
        var climaIcon: String
    }
    
    var climas = [
        Weather(clima: "Sun", climaIcon: "sun.max.fill"),
        Weather(clima: "Clouds", climaIcon: "cloud.fill"),
        Weather(clima: "Storm", climaIcon: "cloud.bolt"),
        Weather(clima: "Moon", climaIcon: "moon.fill"),
        Weather(clima: "Snow", climaIcon: "snowflake"),
        Weather(clima: "Tornado", climaIcon: "tornado")
    ]
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

