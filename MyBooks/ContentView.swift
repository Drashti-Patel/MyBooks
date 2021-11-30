//
//  ContentView.swift
//  MyBooks
//
//  Created by Drashti Jaykumar Jasani on 29.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
        List {
            
            ForEach(myFavourites) { favourite in
                Section(header: Text(favourite.title)) {
                    ForEach(favourite.elements) { element in
                        NavigationLink(destination: DetailsView(selectedDetail: element)) {
                            Text(element.name)
                        }
                    }
                }
                
            }.navigationBarTitle(Text("Favourite"))
        }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
