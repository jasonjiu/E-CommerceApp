//
//  SectionView.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 14/06/21.
//

import SwiftUI

struct SectionView: View {
    //MARK: - properties
    @State var rotateClockWise: Bool
    
    //MARK: - body
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
                
            Spacer()
        })
        .background(colorGray.cornerRadius(12))
        .frame(width: 85, alignment: .center)
    }
}

//MARK: - preview
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
