//
//  AboutView.swift
//  MenuApp
//
//  Created by Marcello Gonzatto Birkan on 22/03/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
      ScrollView(showsIndicators: false) {
        VStack(alignment: .leading) {
          Text("About")
            .font(.largeTitle)
            .bold()
          
          Image(.chefSushi)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.bottom)
          
        Text("Sukiyabashi Jiro (すきやばし次郎, Sukiyabashi Jirō) is a sushi restaurant in Ginza, Chūō, Tokyo, Japan. It is owned and operated by sushi master Jiro Ono.[1] It was the first sushi restaurant in the world[2] to receive three stars from the Michelin Guide,[3] although it was removed from the Michelin Guide in November 2019 as it does not receive reservations from the general public,[4][5] instead requiring reservations to be made through the concierge of a luxury hotel.[6]")
          
          Image(.mapSushi)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.bottom)
          
          Text("Tsukamoto Sogyo Building Basement\nFloor 12-15,\nGinza 4-chome")
        }
        .padding(.horizontal)
      }
    }
}

#Preview {
    AboutView()
}
