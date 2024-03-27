//
//  GalleryView.swift
//  MenuApp
//
//  Created by Marcello Gonzatto Birkan on 22/03/24.
//

import SwiftUI

struct GalleryView: View {
  @State var photoData = [String]()
  @State private var sheetVisible = false
  @State var selectedPhoto = ""
  var dataService = MenuItemOO()
  
    var body: some View {
      VStack(alignment: .leading) {
        Text("Gallery")
          .font(.largeTitle)
          .bold()
        
        GeometryReader { proxy in // caso tivessemos imagens maiores que o grid suporta
          ScrollView {
            LazyVGrid(columns: [GridItem(spacing: 10),
                                GridItem(spacing: 10),
                                GridItem(spacing: 10)], spacing: 10) {
              ForEach(photoData, id: \.self) { photo in
                Image(photo)
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                  .clipShape(RoundedRectangle(cornerRadius: 8))
                  .frame(maxWidth: (proxy.size.width - 20) / 3) // cortar pedços da iamgens maiores junto com .clipped()
                  .clipped()
                  .onTapGesture {
                    selectedPhoto = photo
                    sheetVisible.toggle()
                  }
              }
            }
          }
        }
      }
      .padding(.horizontal)
      .onAppear(perform: {
        photoData = dataService.getPhotos()
      })
      .sheet(isPresented: $sheetVisible, content: {
        PhotoView(image: $selectedPhoto, sheetVisible: $sheetVisible)
          .presentationDetents([.medium, .large])
      })
      
    }
}

#Preview {
    GalleryView()
}
