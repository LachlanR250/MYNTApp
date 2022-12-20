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
                
                VStack {
                    
                    HStack {
                        
                        
                        
                        Group {
                            Text("kVA")
                                .padding(7)
                                .background(customColor.myntColor)
                                .cornerRadius(10)
                                .padding(.leading, 10)
                            
                            Text("a measure of apparent power: it tells you the total amount of power in use in a system. In a 100% efficient system kW = kVA. However electrical systems are never 100% efficient and therefore not all of the systems apparent power is being used for useful work output.")
                                .padding(7)
                                .background(customColor.myColor)
                                .cornerRadius(15)
                                .padding(.trailing, 30)
                        }
                        .padding(.leading, 15)

                     /*   Group {
                            Rectangle()
                                .fill(customColor.myntColor)
                                .cornerRadius(10)
                                .frame(width:50, height: 50)
                                .padding(.trailing, 20)
                         /*   Rectangle()
                                .fill(customColor.myntColor)
                                .cornerRadius(10)
                                .frame(width:50, height: 50)*/
                        }*/
                       // .padding(.leading, 10)
                        
                    }
                    
                    
                    HStack {
                        
                        
                        
                        Group {
                           
                            
                            Text("the unit used to measure electric current. Current is a count of the number of electrons flowing through a circuit. One amp is the amount of current produced by a force of one volt acting through the resistance of one ohm.")
                                .padding(7)
                                .background(customColor.myColor)
                                .cornerRadius(15)
                                .padding(.leading, 10)
                                
                            
                            Text("Amps")
                                .padding(7)
                                .background(customColor.myntColor)
                                .cornerRadius(10)
                                
                                .padding(.trailing, 30)
                        }
                        .padding(.leading, 15)

                     /*   Group {
                            Rectangle()
                                .fill(customColor.myntColor)
                                .cornerRadius(10)
                                .frame(width:50, height: 50)
                                .padding(.trailing, 20)
                         /*   Rectangle()
                                .fill(customColor.myntColor)
                                .cornerRadius(10)
                                .frame(width:50, height: 50)*/
                        }*/
                       // .padding(.leading, 10)
                        
                    }
                    
                    
                    
                    HStack {
                        
                        
                        
                        Group {
                            Text("90°")
                                .padding(7)
                                .background(customColor.myntColor)
                                .cornerRadius(10)
                                .padding(.leading, 10)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec libero leo, ultrices sit amet lectus volutpat, egestas suscipit tortor. Donec vel urna commodo, cursus purus a, molestie urna. Proin vel tellus nibh. Nunc vitae eros quis sem accumsan lobortis vitae ornare orci. Suspendisse blandit, nibh vitae molestie dictum, nibh odio euismod turpis, at facilisis ante augue nec nunc. Sed at diam aliquet, molestie elit sit amet, egestas tortor. Integer id ultrices orci. Duis elit dolor, pellentesque quis aliquet quis, luctus sed sapien. Vestibulum eget suscipit urna. Morbi nec maximus leo. Donec elementum libero ac augue consectetur, a mollis risus accumsan. Etiam ac molestie dolor.")
                                .padding(7)
                                .background(customColor.myColor)
                                .cornerRadius(15)
                                .padding(.trailing, 30)
                        }
                        .padding(.leading, 15)

                     /*   Group {
                            Rectangle()
                                .fill(customColor.myntColor)
                                .cornerRadius(10)
                                .frame(width:50, height: 50)
                                .padding(.trailing, 20)
                         /*   Rectangle()
                                .fill(customColor.myntColor)
                                .cornerRadius(10)
                                .frame(width:50, height: 50)*/
                        }*/
                       // .padding(.leading, 10)
                        
                    }
                    
                    
                    
                    
                    
                    HStack {
                        Group {
                            
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec libero leo, ultrices sit amet lectus volutpat, egestas suscipit tortor. Donec vel urna commodo, cursus purus a, molestie urna. Proin vel tellus nibh. Nunc vitae eros quis sem accumsan lobortis vitae ornare orci. Suspendisse blandit, nibh vitae molestie dictum, nibh odio euismod turpis, at facilisis ante augue nec nunc. Sed at diam aliquet, molestie elit sit amet, egestas tortor. Integer id ultrices orci. Duis elit dolor, pellentesque quis aliquet quis, luctus sed sapien. Vestibulum eget suscipit urna. Morbi nec maximus leo. Donec elementum libero ac augue consectetur, a mollis risus accumsan. Etiam ac molestie dolor.")
                                .padding(7)
                                .background(customColor.myColor)
                                .cornerRadius(15)
                                .padding(.leading, 10)
                            
                            
                            Text("110°")
                                .padding(7)
                                .background(customColor.myntColor)
                                .cornerRadius(10)
                            
                                .padding(.trailing, 30)
                        }
                        .padding(.leading, 15)
                        
                    }
                    
            /*        HStack {

                      //  Group {
                        
                        Group {
                            Rectangle()
                                .fill(customColor.myntColor)
                                .cornerRadius(10)
                                .frame(width:50, height: 50)
                            Rectangle()
                                .fill(customColor.myntColor)
                                .cornerRadius(10)
                                .frame(width:50, height: 50)
                        }
                        
               //     }
                       
                        
                        
                        
                        Group {
                            Text("Amps")
                                .padding(7)
                                .background(customColor.myntColor)
                                .cornerRadius(10)
                            
                            Text("hello hello hoo")
                        }
                        
                        .padding(10)
                        .background(customColor.myColor)
                        .cornerRadius(15)
                        .padding(.leading, 10)
                        
                        
                    }
                    .padding(.leading, 30)  */

                    
                } //<- this is the end of the VStack
                
                
            }
            .navigationTitle("MYNT - First Element")
            .frame(width:500)
            .toolbarBackground(
                Color("MYNTGreen"),
                for: .navigationBar)
            .toolbarBackground(customColor.myntColor, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
    }
    }

struct InfoToolTipPage_Previews: PreviewProvider {
    static var previews: some View {
        ZStack { InfoToolTipPage()
        }
    }
}
