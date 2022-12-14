//
//  ContentView.swift
//  MYNTApp
//
//  Created by Chloe Flintoff on 14/12/2022.
//

import SwiftUI
import CoreData


    

struct GeneratorPage: View {
    
    // Calc Amp
    @State private var itemSelected = 0
    @State private var itemSelected2 = 1
    @State private var amount : String = ""
    private let converting = ["kVA","kW","HP"]
    @State private var amountHP : String = ""
    
    
    
    //Functions
    func convert(_ convert: String) -> String {
        var conversion: Double = 1.0
        let amount = Double(convert) ?? 0.0
        let selectedConvert = converting[itemSelected]
        let to = converting[itemSelected2]
        
        let kVARate = ["kVA": 1,"kW": 0.8,"HP": 1.072]
        let kWRate = ["kVA": 1.25,"kW": 1,"HP": 1.34]
        let HPRate = ["kVA": 0.933,"kW": 0.745,"HP": 1]
        
        
        switch(selectedConvert){
        case "kVA":
            conversion = amount * (kVARate[to] ?? 0.0)
            
        case "kW" :
            conversion = amount * (kWRate[to] ?? 0.0)
            
        case "HP" :
            conversion = amount * (HPRate[to] ?? 0.0)
            
        default :
            print("Something went wrong")
            
        }
        
        return String(format: "%.2f", conversion)
    }
    
    func convert0(_ convert: String) -> String {
        var conversion: Double = 1.0
        let amount = Double(convert) ?? 0.0
        
        conversion = ceil(amount * 3.7769 )
        
        return String(format: "%.0f", conversion)
    }
    
    
    struct contactButtonChange: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
               
                .background(Color.white)
                .foregroundColor(Color.white)
              
               // green border, white background and green text.
              //  no shadow around button, to give the effect that it's indented when pressed.
             //   style changes when being pressed, but when the button is released, then the page changes to the contact us page.
            //    the information button also needs to be modified, currently it is just a rectangular button with the letter "i"
           //     in the middle.
        }
    }
    

    var body: some View {
        
        


        NavigationStack {
            
            Text("Generator Sizing")
                .padding(.leading, -100)
            
                .font(.title)
                .fontWeight(.bold)
            
                .navigationTitle("MYNT - First Element")
                .frame(width:500)
                .toolbarBackground(
            Color("MYNTGreen"),
                    for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
               //this is where it was before
            
            
            HStack {
                
                Button {
                    print("Hello, World!")
                }
                       
                       label: {
                    Text("CONTACT US")
                        .font(.system(size:25))
                        .fontWeight(.bold)
                        .padding(.leading, 50)
                        .padding(.trailing, 50)
                        .padding(.top, 15)
                        .padding(.bottom, 15)
                        .background(Color.green)
                        .cornerRadius(10)
                        .clipShape(Capsule())
                        .foregroundColor(Color.white)
                        .frame(maxWidth: 530)
                    //
                        .shadow(color: .gray, radius: 5, x:7, y:5)
    
                    
                }.buttonStyle(contactButtonChange())
                
                
                
                
                Button(action: {
                    print("Hello, World!")
                }, label: {
                    Text("i")
                        .padding()
                        .background(Color.white)
                        .foregroundColor(Color.black)
                })
                
            }
            

                Form {
                    

                    
                    Section(header: Text("")){
                        EmptyView()
                    }
                    
                    
                    Section(header: Text("HP of Motor ")){
                        TextField("Gen kVA",text:$amountHP).keyboardType(.decimalPad)
                        
                    }
                    Section(header: Text("Required KVA")){
                        Text("\(convert0(amountHP))")
                        
                        
                    }
                    
                }
        
        
            .scrollContentBackground(.hidden)
  

    }
        
        }
    }

struct GeneratorPage_Previews: PreviewProvider {
    static var previews: some View {
        ZStack { GeneratorPage()
        }
    }
}
