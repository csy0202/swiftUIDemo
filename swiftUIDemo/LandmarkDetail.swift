//
//  ContentView.swift
//  swiftUIDemo
//
//  Created by 陈淑洋 on 2020/3/5.
//  Copyright © 2020 chensy. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark : Landmark
    var body: some View {
        VStack{
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top).frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(x:0,y:-130)
                .padding(.bottom,-130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                    
                }
            }.padding()
            Spacer()
        }.navigationBarTitle(Text(verbatim: landmark.name), displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
