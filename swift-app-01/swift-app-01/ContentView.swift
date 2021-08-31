//
//  ContentView.swift
//  swift-app-01
//
//  Created by Jairo Alberto Soto on 25/08/21.
//

import SwiftUI
import swift_lib_03



struct ContentView: View {
    var body: some View {
        Text(swift_lib_03().concatenateStrings(a: "World", b: "of swift"))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
