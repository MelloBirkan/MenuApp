//
//  ContentView.swift
//  MenuApp
//
//  Created by Marcello Gonzatto Birkan on 18/03/24.
//

import SwiftUI

struct MenuView: View {
  @State var menuItems:[MenuItem] = [MenuItem]()
  var dataServide = DataService()
  
  var body: some View {
    List(menuItems) { item in
      
      MenuListRow(image: item.image, name: item.name, price: item.price)
    }
    .listStyle(.plain)
    .onAppear(perform: {
      // Call for the data
      menuItems = dataServide.getData()
    })
  }
}

#Preview {
  MenuView()
}
