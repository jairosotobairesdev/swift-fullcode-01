//
//  ContentView.swift
//  swift-app-01
//
//  Created by Jairo Alberto Soto on 25/08/21.
//

import SwiftUI
import swift_lib_03



struct ContentView: View {
    @State private var screen: String = "0"
    var body: some View {
        Text(screen)
            .padding()
            .font(.title)
        HStack {
            Button(action: {
                screen = "0"
            }) {
                Text("AC")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
                    
                    
            }
            .padding(.horizontal, 0.0)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("+/-")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
                    
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("%")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
                    
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("/")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
                    
            }
        }
        HStack{
            Button(action: {
                screen += "7"
            }) {
                Text("7")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: {
                screen += "8"
            }) {
                Text("8")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: {
                screen += "9"
            }) {
                Text("9")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: {
                
            }) {
                Text("X")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
        }
        HStack{
            Button(action: {
                screen += "4"
            }) {
                Text("4")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: {
                screen += "5"
            }) {
                Text("5")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: {
                screen += "6"
            }) {
                Text("6")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("-")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
        }
        HStack{
            Button(action: {
                screen += "1"
            }) {
                Text("1")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: {
                screen += "2"
            }) {
                Text("2")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: {
                screen += "3"
            }) {
                Text("3")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("+")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
        }
        HStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("0")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text(",")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("=")
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
