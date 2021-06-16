//
//  ContentView.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 14/06/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - properties
    @EnvironmentObject var shop: Shop
    
    //MARK: - body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(alignment: .center, spacing: 0, content: {
                    
                    NavigationBariView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(alignment: .center, spacing: 0, content: {
                            // Slider image
                            FeaturedTabView()
                                .padding(.vertical, 20)
                            
                            // Category slider
                            CategoryGridView()
                            
                            //Title
                            TitleView(title: "Helmet")
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                
                                ForEach(products) { item in
                                    ProductItemView(product: item)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = item
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                            
                            //brand
                            TitleView(title: "Brand")
                            BrandGridView()
                            
                            //Footer section
                            FooterView()
                                .padding(.horizontal)
                        })//VSTACK
                    })//ScrollView
                })//vstack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

//MARK: - preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}


// TRICK : OPTION + COMMAND + LEFT ARROW UNTUK FOLD METHOD DARI OPEN BRACKET UNTIL CLOSE BRACKET
