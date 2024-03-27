//
//  PhotoView.swift
//  MenuApp
//
//  Created by Marcello Gonzatto Birkan on 26/03/24.
//

import SwiftUI

struct PhotoView: View {
  @Binding var image: String
  @Binding var sheetVisible: Bool
  
  var body: some View {
    VStack {
//      Button(action: {
//        sheetVisible = false
//      }, label: {
//        Image(systemName: "x.circle")
//          .foregroundColor(.black)
//          .scaleEffect(2)
//      })
//      .frame(maxWidth: .infinity, alignment: .trailing)
//      .padding(25)
      
        Image(image)
          .resizable()
          .aspectRatio(contentMode: .fit)
          .clipShape(RoundedRectangle(cornerRadius: 12))
          .padding()
        
      Spacer()
    }
  }
}

#Preview {
  @State var image = "sushi1"
  return PhotoView(image: Binding.constant("sushi2"), sheetVisible: Binding.constant(true))
}
