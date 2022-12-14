//
//  HomePage.swift
//  MYNTApp
//
//  Created by Lachlan Ryan on 13/12/2022.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        NavigationStack{
            List{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("MYNT ")
            .toolbarBackground(Color.green, for: .navigationBar).toolbarBackground(.visible, for: .navigationBar)
        }
        
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            HomePage()
        }
    }
}
