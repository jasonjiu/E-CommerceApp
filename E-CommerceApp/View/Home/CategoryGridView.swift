//
//  CategoryGridView.swift
//  E-CommerceApp
//
//  Created by Jason Prosia on 14/06/21.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - properties
    
    //MARK: - body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(header: SectionView(rotateClockWise: false), footer: SectionView(rotateClockWise: true), content: {
                    ForEach(categories) { item in
                        CategoryItemView(category: item)
                    }
                })
            })//GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })//SCROLL
    }
}

//MARK: - preview
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
