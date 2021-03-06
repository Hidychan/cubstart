//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var num: Double = 50
    @State var toggle = false
    
    var body: some View {
        VStack() {
            HStack() {
                VStack() {
                    Text("High Score")
                    Text("0")
                }
                .padding(.leading, 20)
                
                Spacer()
                
                VStack() {
                    Text("Current Level").padding(.trailing)
                    Text("1")
                }
            }
            Spacer()
            Text("Move the slider to:").font(.system(size: 30.0))
            Text("25").font(.system(size: 30.0))
            Slider(value: $num, in: 0...100).padding()
            Button("Check") {
                
            }
            Spacer()
            Text("Exact Mode?").font(.system(size: 15.0))
            Toggle("", isOn: $toggle).frame(width: 0, height: 0, alignment: .center)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
