//
//  ContentView.swift
//  SimpleCalcApp
//
//  Created by Lachlan Ryan on 26/8/2022.
//

import SwiftUI

struct ContentView: View {
    //@FetchRequest(sortDescriptors: []) var kVA: FetchedResults<Load>

    var body: some View {
        TabView{
            HomePage()
                .tabItem(){
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            HomePage()
                .tabItem(){
                    Image(systemName: "powerplug")
                    Text("Calculate Amps")
                }
            HomePage()
                .tabItem(){
                    Image(systemName: "bolt.square")
                    Text("Calculate Amps")
                }
            HomePage()
                .tabItem(){
                    Image(systemName: "envelope")
                    Text("Calculate Amps")
                }

        }

        
        
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}



