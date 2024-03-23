//
//  DataService.swift
//  MenuApp
//
//  Created by Marcello Gonzatto Birkan on 21/03/24.
//

import SwiftUI

@Observable
class DataService {
  
  func getData() -> [MenuItem] {
    return [
      MenuItem(name: "Onigiri", price: "1.99", image: Image(.onigiri)),
      MenuItem(name: "Meguro Sushi", price: "5.99", image: Image(.meguroSushi)),
      MenuItem(name: "Tako Sushi", price: "4.99", image: Image(.takoSushi)),
      MenuItem(name: "Avocado Maki", price: "2.99", image: Image(.avocadoMaki)),
      MenuItem(name: "Tobiko Spicy Maki", price: "4.99", image: Image(.tobikoSpicyMaki)),
      MenuItem(name: "Salmon Sushi", price: "4.99", image: Image(.salmonSushi)),
      MenuItem(name: "Hamachi Sushi", price: "6.99", image: Image(.hamachiSushi)),
      MenuItem(name: "Kani Sushi", price: "3.99", image: Image(.kaniSushi)),
      MenuItem(name: "Tamago Sushi", price: "3.99", image: Image(.tamagoSushi)),
      MenuItem(name: "California Roll", price: "3.99", image: Image(.californiaRoll)),
      MenuItem(name: "Shrimp Sushi", price: "3.99", image: Image(.shrimpSushi)),
      MenuItem(name: "Ikura Sushi", price: "5.99", image: Image(.ikuraSushi))
    ]
  }
}
