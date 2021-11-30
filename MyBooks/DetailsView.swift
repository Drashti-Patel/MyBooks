//
//  DetailsView.swift
//  MyBooks
//
//  Created by Drashti Jaykumar Jasani on 29.11.2021.
//

import SwiftUI

struct DetailsView: View {
    
    var selectedDetail : BookElements
    
    var body: some View {
        VStack {
            Image(selectedDetail.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(selectedDetail.name)
                .font(Font.largeTitle)
                .padding()
            
            Text(selectedDetail.description)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(selectedDetail: novel1)
    }
}
