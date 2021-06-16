//
//  Shop.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 16/06/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
}
