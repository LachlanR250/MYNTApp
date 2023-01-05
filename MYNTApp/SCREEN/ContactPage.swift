//
//  ContactPage.swift
//  MYNTApp
//
//  Created by Chloe Flintoff on 21/12/2022.
//

import SwiftUI






 
 
  //why don't these colours work??

struct ContactPage: View {
    
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var subject: String = ""
    @State private var message: String = ""
    
    
    
    
    var body: some View {
        NavigationStack {
        List {
        
        Text("Contact Us")
        .padding(.leading, 30)
        .font(.title)
        .fontWeight(.bold)
            
            Text("Need some help? Want to chat? Submit you message here...")
                .padding(.leading, 40)
            
            
        VStack {
            Text("Your Name")
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontWeight(.bold)
            
                   TextField("", text: $fullName)
                .accentColor(.green)
                .border(.green)
                .frame(width: 350, alignment: .leading)
                .padding(.leading, -30)
            
            Text("Your Email")
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontWeight(.bold)
            TextField("", text: $email)
                .accentColor(.green)
                .border(.green)
                .frame(width: 350, alignment: .leading)
                .padding(.leading, -30)
            
            Text("Your Subject")
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontWeight(.bold)
                        TextField("", text: $subject)
                .accentColor(.green)
                .border(.green)
                .frame(width: 350, alignment: .leading)
                .padding(.leading, -30)
            
            Text("Your Message")
                .frame(maxWidth: .infinity, alignment: .leading)
                .fontWeight(.bold)
                        TextField("", text: $message)
                
                .accentColor(.green)
                .border(.green)
                .frame(width: 350, alignment: .leading)
                .padding(.leading, -30)
        
                }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                 .padding(.leading, 30)

            
            Button {
                print("Hello, World!")
            }
        label: {
            Text("SUBMIT")
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
        }

        } //<- end of the List
       // .navigationTitle("MYNT - First Element")
        .frame(width:500)
        //.padding(.top, 20)
        .toolbar {
            
            ToolbarItem(placement: .principal) {
                Image("whiteMyntLogo")
                    .frame(width:20)
            }
            
            
        }
        
            
            
            
      /*
        .toolbarBackground(customColor.myntColor, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
        
        */
        
        
        
        
        
        /* need to figure out how to change the navigation bar text to white*/
        /*  .toolbarColorScheme(.light, for: .navigationbar) */
        
        
        .toolbarBackground(
    Color("MYNTGreen"),
    for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        }  //<- end of the navigation stack


    }
}

struct ContactPage_Previews: PreviewProvider {
    static var previews: some View {
        ContactPage()
    }
}
