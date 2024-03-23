//
//  MenuListRow.swift
//  MenuApp
//
//  Created by Marcello Gonzatto Birkan on 22/03/24.
//

import SwiftUI

struct MenuListRow: View {
  let image: Image
  let name: String
  let price: String
  
    var body: some View {
      HStack {
        
        image
          .resizable()
          .aspectRatio(contentMode: .fit)
          .frame(width: 60)
          .clipShape(RoundedRectangle(cornerRadius: 12))
        
        Text(name)
        Spacer()
        Text("$ " + price)
      }
      .listRowSeparator(.hidden)
      .listRowBackground(Color.brown.opacity(0.1))
    }
}

#Preview {
  MenuListRow(image: Image(.californiaRoll), name: "California Roll", price: "13.00")
}
