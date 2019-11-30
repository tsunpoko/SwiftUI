//
//  ContentView.swift
//  testapp
//
//  Created by Takato Nakamatsu on 2019/11/09.
//  Copyright © 2019 Takato Nakamatsu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -100)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                Text("Racksky")
                    .font(.title)
                    .foregroundColor(.blue)
                HStack(alignment: .top) {
                    Text("Nago-city, Henoko")
                        .font(.subheadline)
                    Spacer()
                    Text("Okinawa")
                        .font(.subheadline)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
