//
//  ProductModel.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 14/06/21.
//

import Foundation

struct ProductModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    
    //computed variable
    var red: Double{
        return color[0]
    }
    
    var green: Double{
        return color[1]
    }
    
    var blue: Double{
        return color[2]
    }
    
    var formatedPrice: String{
        return "$\(price)"
    }
}
