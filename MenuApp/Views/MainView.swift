//
//  MainView.swift
//  MenuApp
//
//  Created by Marcello Gonzatto Birkan on 22/03/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
      TabView {
        MenuView()
          .tabItem {
            tabItem(symbol: "menucard", text: "Menu")
          }
        
        AboutView()
          .tabItem {
            tabItem(symbol: "info.circle", text: "About")
          }
        
        GalleryView()
          .tabItem {
            tabItem(symbol: "photo", text: "Gallery")
          }
      }
    }
  
  func tabItem(symbol: String, text: String) -> some View {
    VStack {
      Image(systemName: symbol)
      Text(text)
    }
  }
}

#Preview {
    MainView()
}


