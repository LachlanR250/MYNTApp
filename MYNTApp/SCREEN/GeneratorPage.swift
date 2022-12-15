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
        @State private var phaseSelected = 0
        @State private var switchkVASelected : String = "25"
        @State private var switchVoltsSlected : String = "240"
        private let phaseSelect = ["One","Three"]
        

        
    //Functions
        func convertkVA(_ convertkVA: String,_ convertVolts: String) -> String {
            var conversion: Double = 1.0
            //let amp = Double(convert) ?? 0.0
            let kva = Double(convertkVA) ?? 1.0
            let volt = Double (convertVolts) ?? 1.0
            let selectedPhase = phaseSelect[phaseSelected]
            
            //let phaseRate = ["One": 1.0, "Three": 1.73205]
            
            switch(selectedPhase){
            case "One":
                conversion = (1000 * kva) / volt

            case "Three" :
                conversion = (1000 * kva) / (1.73205 * volt)
            
            default :
            print("Something went wrong")

            }
            return String(format: "%.2f", conversion)
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
            .padding(.bottom, 20)

            Form {
                Section(header: Text("Select Phase")){
                    Picker(selection: $phaseSelected, label : Text("Phase")){
                        ForEach(0 ..< phaseSelect.count) {index in
                            Text(self.phaseSelect[index]).tag(index)
                        }
                    }
                    
                }
//Calculate amps from KVA and Volts
                Section(header: Text("Calculate Amp")){
                    HStack{
                        Text("KVA:").padding(.trailing, 20)
                        TextField("Gen kVA",text:$switchkVASelected).keyboardType(.decimalPad)
                    }
                        HStack{
                        Text("Volts:").padding(.trailing, 20)
                        TextField("Volts",text:$switchVoltsSlected).keyboardType(.decimalPad)
                    }
                    Button(action: {
                        print("Hello, World!")
                    }, label: {
                        Text("+")
                            .padding(10)
                            .background(Color.gray)
                            .foregroundColor(Color.black)
                    })
                
                }
                Section(header: Text("Conversion")){
                    Text("\(convertkVA(switchkVASelected,switchVoltsSlected ))")
                }
                //Colapse
               
                //colapse end
                
                

            }.navigationBarTitle("AMP Calculator")
        
        
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
