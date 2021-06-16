//
//  NavbarDetailView.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 16/06/21.
//

import SwiftUI

struct NavbarDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}

struct NavbarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
