//
//  ContentView.swift
//  2020_iOS_bonus4
//
//  Created by Hannn on 2020/5/22.
//  Copyright © 2020 Hannn. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    @State private var rotateDegree: Double = 300
    var body: some View {
        VStack{
            ZStack{
                Image("earth")
                    .resizable()
                    .scaledToFill()
                    .frame(width:200, height: 200)
                    .cornerRadius(.infinity)
                    .shadow(radius: 15)
                Image("main")
                    .resizable()
                    .frame(width:90, height: 90)
                    .offset(x:0,y: -150)
                    .foregroundColor(Color(red: 150/255, green: 213/255, blue: 252/255))
                    .rotationEffect(.degrees(rotateDegree+43))
            }
            HStack{
                Slider(value: self.$rotateDegree, in: 0...360)
                    .accentColor(Color.blue)
            }
            .offset(y: 50)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
