//
//  ContentView.swift
//  MYNTApp
//
//  Created by Chloe Flintoff on 14/12/2022.
//

import SwiftUI
import CoreData



struct CablePage: View {
    // Buton bool
    @State private var isOverButton = false
    
    // Calc Cable
    @State private var calcSelected = 0
    @State private var switchAmp : String = "25"
    private let calcSelect = ["kVA","Amps"]
    
    //Functions
    func convertCable(_ convertValue: String) -> String {
        var conversion: String = ""
        let value = Double(convertValue) ?? 1.0
        let selectedPhase = calcSelect[calcSelected]
        
        
        switch(selectedPhase){
        case "kVA":
            switch(value){
            case let x where x <= 25:
                conversion = "6"
            case let x where x > 25 && x <= 35:
                conversion = "10"
            case let x where x > 35 && x <= 45:
                conversion = "16"
            case let x where x > 45 && x <= 60:
                conversion = "25"
            case let x where x > 60 && x <= 75:
                conversion = "35"
            case let x where x > 75 && x <= 100:
                conversion = "70"
            case let x where x > 100 && x <= 125:
                conversion = "95"
            case let x where x > 125 && x <= 150:
                conversion = "120"
            case let x where x > 150 && x <= 220:
                conversion = "240"
            case let x where x > 220 && x <= 300:
                conversion = "2 x 150"
            case let x where x > 300 && x <= 400:
                conversion = "2 x 240"
            case let x where x > 400 && x <= 500:
                conversion = "3 x 185"
            case let x where x > 500 && x <= 600:
                conversion = "3 x 240"
            case let x where x > 600 && x <= 800:
                conversion = "4 x 240"
                
            default :
                conversion = "Too Big"
                print("Something went wrong")
                
            }
            
        case "Amps" :
            
            switch(value){
            case let x where x <= 35:
                conversion = "6"
            case let x where x > 35 && x <= 49:
                conversion = "10"
            case let x where x > 49 && x <= 63:
                conversion = "16"
            case let x where x > 63 && x <= 84:
                conversion = "25"
            case let x where x > 84 && x <= 105:
                conversion = "35"
            case let x where x > 105 && x <= 139:
                conversion = "70"
            case let x where x > 139 && x <= 174:
                conversion = "95"
            case let x where x > 174 && x <= 209:
                conversion = "120"
            case let x where x > 209 && x <= 306:
                conversion = "240"
            case let x where x > 306 && x <= 417:
                conversion = "2 x 150"
            case let x where x > 417 && x <= 556:
                conversion = "2 x 240"
            case let x where x > 556 && x <= 695:
                conversion = "3 x 185"
            case let x where x > 695 && x <= 843:
                conversion = "3 x 240"
            case let x where x > 843 && x <= 1112:
                conversion = "4 x 240"
                
            default :
                conversion = "Too Big"
                print("Something went wrong")
            }
            
        default :
            print("Something went wrong")
            
        }
        return String(conversion)
    }
    
    func convertCable110(_ convertValue: String) -> String {
        var conversion: String = ""
        let value = Double(convertValue) ?? 1.0
        let selectedPhase = calcSelect[calcSelected]
        
        
        switch(selectedPhase){
        case "kVA":
            switch(value){
            case let x where x <= 25:
                conversion = "4"
            case let x where x > 25 && x <= 35:
                conversion = "6"
            case let x where x > 35 && x <= 45:
                conversion = "10"
            case let x where x > 45 && x <= 60:
                conversion = "16"
            case let x where x > 60 && x <= 75:
                conversion = "25"
            case let x where x > 75 && x <= 100:
                conversion = "35"
            case let x where x > 100 && x <= 125:
                conversion = "70"
            case let x where x > 125 && x <= 150:
                conversion = "95"
            case let x where x > 150 && x <= 220:
                conversion = "120"
            case let x where x > 220 && x <= 300:
                conversion = "185"
            case let x where x > 300 && x <= 400:
                conversion = "2 x 150"
            case let x where x > 400 && x <= 500:
                conversion = "2 x 185"
            case let x where x > 500 && x <= 600:
                conversion = "2 x 240"
            case let x where x > 600 && x <= 800:
                conversion = "3 x 240"
                
            default :
                conversion = "Too Big"
                print("Something went wrong")
            }
            
        case "Amps" :
            
            switch(value){
            case let x where x <= 35:
                conversion = "4"
            case let x where x > 35 && x <= 49:
                conversion = "6"
            case let x where x > 49 && x <= 63:
                conversion = "10"
            case let x where x > 63 && x <= 84:
                conversion = "16"
            case let x where x > 84 && x <= 105:
                conversion = "25"
            case let x where x > 105 && x <= 139:
                conversion = "35"
            case let x where x > 139 && x <= 174:
                conversion = "70"
            case let x where x > 174 && x <= 209:
                conversion = "95"
            case let x where x > 209 && x <= 306:
                conversion = "120"
            case let x where x > 306 && x <= 417:
                conversion = "185"
            case let x where x > 417 && x <= 556:
                conversion = "2 x 150"
            case let x where x > 556 && x <= 695:
                conversion = "2 x 185"
            case let x where x > 695 && x <= 843:
                conversion = "2 x 240"
            case let x where x > 843 && x <= 1112:
                conversion = "3 x 240"
                
            default :
                conversion = "Too Big"
                print("Something went wrong")
            }
            
            
        default :
            print("Something went wrong")
            
        }
        return String(conversion)
    }
    
    
    struct customColor {
        static let myColor = Color("mycolor")
        static let myntColor = Color("MYNTGreen")
        static let lightGray = Color("lightGray")
        static let lightMynt = Color("lightMynt")
    }
    
    
    struct contactButtonChange: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
            
                .background(Color.white)
                .foregroundColor(customColor.myntColor)
                .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(customColor.myntColor, lineWidth: 2)
                )
            
            // green border, white background and green text.
            //  no shadow around button, to give the effect that it's indented when pressed.
            //   style changes when being pressed, but when the button is released, then the page changes to the contact us page.
            //    the information button also needs to be modified, currently it is just a rectangular button with the letter "i"
            //     in the middle.
        }
    }

    @State private var path = NavigationPath()
    var body: some View {
        NavigationView {
            List {
                Text("Cable Calculator")
                    .padding(.leading, -100)
                    .font(.title)
                    .listRowSeparator(.hidden)
                    .fontWeight(.bold)
                    .navigationTitle("MYNT - First Element")
                    .frame(width:500)
                    .toolbarBackground(
                        Color("MYNTGreen"),
                        for: .navigationBar)
                    .toolbarBackground(customColor.myntColor, for: .navigationBar)
                    .toolbarBackground(.visible, for: .navigationBar)
                    .toolbarColorScheme(.dark, for: .navigationBar)
                
                                    
             
                    
                    ZStack {
                        /*   NavigationStack(path: $path) {
                         Button {
                         
                         path.append("HomePage")
                         } label: { */
                        
                        Text("CONTACT US")
                        
               
                            .font(.system(size:25))
                            .fontWeight(.bold)
                            .padding(.leading, 50)
                            .padding(.trailing, 50)
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                            .background(customColor.myntColor)
                            .cornerRadius(10)
                            .clipShape(Capsule())
                            .foregroundColor(Color.white)
                            .frame(maxWidth: 530)
                            .shadow(color: .gray, radius:5, x:1, y:4)
                            .listRowSeparator(.hidden)
                        
                        NavigationLink(destination: ContactPage()) {
                            EmptyView()
                            
                        }.opacity(0.0)
                        .buttonStyle(PlainButtonStyle())
                    }
                    ZStack {
                        
                        Text("HELP ME")
                            .padding(.leading, 40)
                            .padding(.trailing, 40)
                            .padding(.top, 15)
                            .padding(.bottom, 15)
                        //  .frame(width: 300, height: 60)
                            .background(customColor.myColor)
                            .clipShape(Capsule())
                            .foregroundColor(Color.gray)
                            .font(.system(size:25))
                            .fontWeight(.bold)
                            .shadow(color: .gray, radius:4, x:1, y:4)
                        
                        NavigationLink(destination: InfoToolTipPage()){
                            EmptyView()
                            
                        }
                        .opacity(0.0)
                        .buttonStyle(BorderlessButtonStyle())
                //        .padding(.leading, 80)
                    }
                    .listRowSeparator(.hidden)
                  
                    
 
                VStack {
                    Spacer()
                } .frame(height:1)
                    .listRowSeparator(.hidden)
                
                Text("Calculate Cable")
                    .fontWeight(.bold)
                    .font(.system(size:25))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                    .listRowSeparator(.hidden)
                HStack{ //<- this is HStack, code: 1
                    //Calculate amps from KVA and Volts
                    Section(){
                        HStack { //<- this is HStack, code: 2
                            TextField("Insert Value",text:$switchAmp).keyboardType(.decimalPad)
                                .textFieldStyle(.roundedBorder).shadow(color: .gray, radius:6, x:3, y:3)
                        
                        } // <- this is end of HStack, code: 2
                        .foregroundColor(Color.black)
                     //   .background(Color.white)
                       // .shadow(color: .gray, radius:6, x:1, y:4)
                        HStack { //<- this is HStack, code: 3
                            Picker(selection: $calcSelected, label : Text("")){
                                ForEach(0 ..< calcSelect.count) {index in
                                    Text(self.calcSelect[index]).tag(index)
                                }
                            }
                        } // <- this is the end of the HStack code: 3
                        //.padding(.leading, 10)
                       .padding(.trailing, 40)
                        .background(customColor.lightGray)
                        .cornerRadius(15)
                        .accentColor(Color.black)
                        .listRowSeparator(.hidden)
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 20)
                    .padding(.bottom, 20)
                    .font(.system(size:25))
                    .cornerRadius(15)
                    .listRowSeparator(.hidden)
                } // <- this is the end of the HStack code: 1
                .frame(height:40)
                .listRowSeparator(.hidden)
//                .shadow(color: .gray, radius:6, x:1, y:15)
                
                Group {
                    
                    VStack (spacing: 10) {
                        
                         
                            
                            Text("Conversion")
                                .fontWeight(.bold)
                                .font(.system(size:25))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 20)
                                .listRowSeparator(.hidden)
                            
                        
                        
                        //   Spacer()
                        /*      Text("90° : \(convertCable(switchAmp)) mm")
                         .foregroundColor(.black)
                         .font(.title)
                         .padding(35)
                         .frame(width: 300, height: 60, alignment: .leading)
                         .background(customColor.lightMynt)
                         .cornerRadius(40)
                         Text("110° : \(convertCable110(switchAmp)) mm")
                         .foregroundColor(.black)
                         .font(.title)
                         .padding(35)
                         .frame(width: 300, height: 60, alignment: .leading)
                         .background(customColor.lightMynt)
                         .cornerRadius(40)    */
                        
                        
                        Group {
                            
                            
                            Text("90 Deg: \(convertCable(switchAmp)) mm")
                            // .listRowBackground(customColor.myntColor)
                            //  .cornerRadius(10)
                                .foregroundColor(.black)
                                .font(.title)
                                .padding(35)
                                .frame(width: 300, height: 60, alignment: .leading)
                                .background(customColor.lightMynt)
                                .cornerRadius(40)
                            
                            Text("110 Deg: \(convertCable110(switchAmp)) mm")
                           //     .listRowBackground(customColor.myntColor)
                                .foregroundColor(.black)
                                .font(.title)
                                .padding(35)
                                .frame(width: 300, height: 60, alignment: .leading)
                                .background(customColor.lightMynt)
                                .cornerRadius(40)
                            
                        }
                        .background(customColor.myntColor)
                        .cornerRadius(15)
                        .listRowSeparator(.hidden)
                      
                    }
                }

                Button {
                    print("Print!")
                }
            label: {
                Text("PRINT")
                    .font(.system(size:25))
                    .fontWeight(.bold)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    .background(customColor.myntColor)
                    .cornerRadius(10)
                    .clipShape(Capsule())
                    .foregroundColor(Color.white)
                    .frame(maxWidth: 530)
                    .shadow(color: .gray, radius:5, x:1, y:4)
                    .padding(.leading, 140)
                    .listRowSeparator(.hidden)
            }
            .listRowSeparator(.hidden)
                //TEST AREA
                //  Button("Print") {}
                // .buttonStyle(CustomButtonStyle())
                // end test area
            } // <- that right there is the end of the list
            .environment(\.defaultMinListRowHeight, 1)
            .listRowSeparator(.hidden)
        
            
            //this is the end of the List
                      //  .frame(width:470)
                       // .padding(.leading, 20)
                      //  .padding(.trailing, 20)
            
            
            
            
        } //this is the end of the NavigationStack

}//this is the end of the var body: some View
    
}//i'm assuming this is the end of the struct CablePage: View, as it it the largest

struct CablePage_Previews: PreviewProvider {
    static var previews: some View {
        ZStack { CablePage()
        }
    }
}
