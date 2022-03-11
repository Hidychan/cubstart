//
//  ContentView.swift
//  setting
//
//  Created by Hidy Chan on 2/28/22.
//

import SwiftUI

struct ContentView: View {
    
    var names = {"Tony", "Jordan", "Hidy", "Coco"}
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("part 1")) {
                    NavigationLink(destination: Text("Airplane Mode")) {
                        Text("Airplane Mode")
                    }
                    NavigationLink(destination: Text("Wi-Fi")) {
                        Text("Wi-Fi")
                    }
                    
                    NavigationLink(destination: Text("Bluetooth")) {
                        Text("Bluetooth")
                    }
                    
                    NavigationLink(destination: Text("Cellular")) {
                        Text("Cellular")
                    }
                    
                    NavigationLink(destination: Text("Personal Hotspot")) {
                        Text("Personal Hotspot")
                    }
                    
                }
                    
                
                Section(header: Text("part 2")) {
                    
                    NavigationLink(destination: Text("Notification")) {
                        Text("Notification")
                    }
                    
                    NavigationLink(destination: Text("Sound & Haptics")) {
                        Text("Sound & Haptics")
                    }
                    
                    NavigationLink(destination: Text("Focus")) {
                        Text("Focus")
                    }
                    
                    NavigationLink(destination: Text("Screen Time")) {
                        Text("Screen Time")
                    }
                }
                Section(header: Text("part 3")) {
                    ForEach(names, id: \.self) {
                        name in Text(name)
                    }
                }
            }
            .navigationTitle("Setting")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
