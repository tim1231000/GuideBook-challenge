//
//  ContentView.swift
//  GuideBook
//
//  Created by 최욱진 on 9/2/25.
//

import SwiftUI

struct CityView: View {
    
    @State var cities = [City]()
    var dataService = DataService()
    
    var body: some View {
        
        NavigationStack {
            
            ScrollView(showsIndicators: false){
                VStack {
                    
                    ForEach(cities) { city in
                        
                        NavigationLink {
                            AttractionView(city: city)
                        } label: {
                            CityCard(city: city)
                                .padding(.bottom, 20)
                        }
                        
                    }
                }
                .ignoresSafeArea() 
                .padding(.horizontal )
            }
            .onAppear {
                cities = dataService.getFileData()
            }
        }
        
        
    }
}

#Preview {
    CityView()
}
