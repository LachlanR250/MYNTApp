//
//  ContentView.swift
//  MYNTApp
//
//  Created by Chloe Flintoff on 19/12/2022.
//

import SwiftUI
import CoreData


struct InfoToolTipPage: View {

    var body: some View {
        
        NavigationStack {
            List {
                Text("Definitions")
                .padding(.leading, 30)
                .font(.title)
                .fontWeight(.bold)
                
                HStack {
                    Text("kVA")
                    .background(customColor.myntColor)
                    
                    Text("blahblahblah")
                }
                
                Text("**kVA:** a measure of apparent power: it tells you the total amount of power in use in a system. In a 100% efficient system kW = kVA. However electrical systems are never 100% efficient and therefore not all of the systems apparent power is being used for useful work output.")
                Text("Amps: An ampere is the unit used to measure electric current. Current is a count of the number of electrons flowing through a circuit. One amp is the amount of current produced by a force of one volt acting through the resistance of one ohm.")
                Text("100*:")
                Text("90*:")
                
                
            }
            .navigationTitle("MYNT - First Element")
            .frame(width:500)

            .toolbarBackground(
                Color("MYNTGreen"),
                for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
    }

struct InfoToolTipPage_Previews: PreviewProvider {
    static var previews: some View {
        ZStack { InfoToolTipPage()
        }
    }
}
