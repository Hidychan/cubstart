//
//  ContentView.swift
//  CounterApp2
//
//  Created by Hidy Chan on 2/14/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var num = 0
    
    
    var body: some View {
        VStack() {
            Image("oski")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            Text(String(num))
                .font(.system(size: 50))
            HStack(spacing: 50) {
                Button("decrement") {
                    if num == 0 {
                        
                    } else {
                        num -= 1
                    }
                }
                .font(.system(size: 30))
                Button("increment") {
                num += 1
                }
                .font(.system(size: 30))
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
