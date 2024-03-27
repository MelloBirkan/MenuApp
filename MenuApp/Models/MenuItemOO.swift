//
//  DataService.swift
//  MenuApp
//
//  Created by Marcello Gonzatto Birkan on 21/03/24.
//

import SwiftUI

@Observable
class MenuItemOO {
  
  func getData() -> [MenuItemDO] {
    return [
      MenuItemDO(name: "Onigiri", price: "1.99", image: Image(.onigiri)),
      MenuItemDO(name: "Meguro Sushi", price: "5.99", image: Image(.meguroSushi)),
      MenuItemDO(name: "Tako Sushi", price: "4.99", image: Image(.takoSushi)),
      MenuItemDO(name: "Avocado Maki", price: "2.99", image: Image(.avocadoMaki)),
      MenuItemDO(name: "Tobiko Spicy Maki", price: "4.99", image: Image(.tobikoSpicyMaki)),
      MenuItemDO(name: "Salmon Sushi", price: "4.99", image: Image(.salmonSushi)),
      MenuItemDO(name: "Hamachi Sushi", price: "6.99", image: Image(.hamachiSushi)),
      MenuItemDO(name: "Kani Sushi", price: "3.99", image: Image(.kaniSushi)),
      MenuItemDO(name: "Tamago Sushi", price: "3.99", image: Image(.tamagoSushi)),
      MenuItemDO(name: "California Roll", price: "3.99", image: Image(.californiaRoll)),
      MenuItemDO(name: "Shrimp Sushi", price: "3.99", image: Image(.shrimpSushi)),
      MenuItemDO(name: "Ikura Sushi", price: "5.99", image: Image(.ikuraSushi))
    ]
  }
  
  func getPhotos() -> [String] {
    return [
      "sushi1",
      "sushi2",
      "sushi3",
      "sushi4",
      "sushi5",
      "sushi6",
      "sushi7",
      "sushi8"
    ]
  }
}
