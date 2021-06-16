//
//  BrandItemView.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 14/06/21.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - properties
    let brand: BrandModel
    
    //MARK: - body
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}


//MARK: - preview
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
