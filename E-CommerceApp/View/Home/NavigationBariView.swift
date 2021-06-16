//
//  NavigationBariView.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 14/06/21.
//

import SwiftUI

struct NavigationBariView: View {
    //MARK: - properties
    @State private var isAnimated: Bool = false
    
    //MARK: - body
    var body: some View {
        HStack{
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })//BTN
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                })
            Spacer()
            Button(action: {
                
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
        }//HSTACK
    }
}

//MARK: - preview
struct NavigationBariView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBariView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
