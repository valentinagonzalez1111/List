//
//  ContentView.swift
//  List
//
//  Created by Apprenant 18 on 20/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Weather")
                .font(.title)
                .fontWeight(.heavy)
                .padding()
            ForEach(climas) { climat in
                HStack(){
                    Image(systemName: climat.climaIcon)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                    Text(climat.clima)
                        .font(.body)
                        .fontWeight(.bold)
                }
                .padding()
                Divider()
            }
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
