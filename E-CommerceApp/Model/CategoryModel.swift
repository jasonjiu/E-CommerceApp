//
//  CategoryModel.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 14/06/21.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
