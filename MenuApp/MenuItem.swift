//
//  MenuItem.swift
//  MenuApp
//
//  Created by Marcello Gonzatto Birkan on 20/03/24.
//

import SwiftUI

struct MenuItem: Identifiable {
  let id = UUID()
  var name: String
  var price: String // porcausa do $ symbol
  var image: Image
}

