//
//  Meteo.swift
//  List
//
//  Created by Apprenant 18 on 20/03/2023.
//

import SwiftUI

struct Meteo: View {
    var weather: Weather
    var body: some View {

        Image(systemName: weather.climaIcon)
            .resizable()
            .frame(width: 120, height: 120)
    }
}


struct Meteo_Previews: PreviewProvider {
    static var previews: some View {
        Meteo(weather: Weather(clima: "sun", climaIcon: "sun.max.fill"))
    }
}
