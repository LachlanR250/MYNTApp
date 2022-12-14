//
//  ContentView.swift
//  MYNTApp
//
//  Created by Lachlan Ryan on 13/12/2022.
//

import SwiftUI
import CoreData




struct ImageOverlay: View {
var body: some View {

ZStack {

Text("Welcome to the MYNT Cable and Generator Calculator")
.foregroundColor(.white)
.opacity(1.0)

}
.font(.system(size:36, weight: .heavy))

.background(Color.black.opacity(0.7))
.cornerRadius(10.0)
.padding(.bottom, 150)
.padding(.trailing, 100)

}

}





struct HomePage: View {

    var body: some View {
   
   
    
    
    NavigationStack {
    List {
 
    
    Image("PortalWorkerImage")
    .resizable()
  
    .frame(width: 420.0, height: 340.0)
    .padding(.top, -15)

    .overlay(ImageOverlay(), alignment: .bottomTrailing)
    
    Text("What we do")
    .padding(.leading, 30)
    .font(.title)
    .fontWeight(.bold)
    
    Text("MYNT First Element is Australia’s leading supplier of generators, fuel cells and distribution products. From 6kva to 1500kva, MYNT carries an extensive inventory for rapid deployment when you have reactive needs. MYNT also carries a range of alternative energy products, and we are committed to assisting our clients in the transition to a net zero future.")
    .font(.system(size:20))
    .padding(.leading, 50)
    .padding(.trailing, 50)
    
    }
    .navigationTitle("MYNT - First Element")
    .frame(width:500)
    
    
    
    
    
    
    
    /* need to figure out how to change the navigation bar text to white*/
    /*  .toolbarColorScheme(.light, for: .navigationbar) */
    
    
    .toolbarBackground(
Color("MYNTGreen"),
for: .navigationBar)
    .toolbarBackground(.visible, for: .navigationBar)
    }
    
    
    
    
    /*
            VStack(){
                
               /* Image("newlogomyntlogo")
                    .resizable()
                    .position(x:196, y:-50)
                    .scaledToFit() */
                
               /* Text("Source Two")
                    .font(.title)
                    .bold()
                
                Spacer() */

            }
            .padding(-100.0)
            .frame(height: 500.0)*/
            
          
            
        }
       /*  .backgroundColor(Color.white)*/
    }




 
    



struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        ZStack { HomePage()
        }
    }
}
