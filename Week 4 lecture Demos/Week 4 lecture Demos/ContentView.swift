//
//  ContentView.swift
//  Week 4 lecture Demos
//
//  Created by Hidy Chan on 2/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(detestnation: Text("Second View"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
