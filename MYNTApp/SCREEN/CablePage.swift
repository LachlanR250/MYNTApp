//
//  TextCardView.swift
//  MYNTApp
//
//  Created by Chloe Flintoff on 4/1/2023.
//

import SwiftUI

struct customColor {
    static let myColor = Color("mycolor")
    static let myntColor = Color("MYNTGreen")
    static let lightGray = Color("lightGray")
    static let lightMynt = Color("lightMynt")
  //  @Binding var deg90: String
}

struct TextView: View {
    var body: some View {
        
        
        VStack (alignment: .leading, spacing: 20) {
            
            Group {
                Text("Conversion Results")
            }
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.leading, 10)
            
            
            
            Group {
                Text("Input")
                
            }
            .font(.title)
            .padding(.leading, 10)
            
            Group {
                
                Text("placeholder text")
            }
            .padding(.leading, 10)
                        
            
            
        }// <- this is the end of the ZStack
            .frame(width: 350, height: 300, alignment: .topLeading)
            .background(customColor.myntColor.opacity(0.4))
        
        
        
        
       /*
        newColor.myntColor.opacity(0.4)
            .cornerRadius(20)
            .frame(width: 350, height: 400, alignment: .center)
            .overlay(
            
            
                Text("Results from Cable Calculator")
                    .font(.largeTitle)
            ) // <- this is the end of the overlay
            .edgesIgnoringSafeArea(.all)
        */
        
        
        
        
          
    } // <- this is the end of the var body: some View
} // <- this is the end of the struct TextView: View




struct CablePage: View {
    var textView = TextView()
    func convertViewToUiImage(_ myView: TextView) -> UIImage {
        var uiImage = UIImage(systemName: "exclamationmark.triangle.fill")!
        let controller = UIHostingController(rootView: myView)
       
        if let view = controller.view {
            let contentSize = view.intrinsicContentSize
            view.bounds = CGRect(origin: .zero, size: contentSize)
           // view.backgroundColor = (Color.gray)

            let renderer = UIGraphicsImageRenderer(size: contentSize)
            uiImage = renderer.image { _ in
                view.drawHierarchy(in: view.bounds, afterScreenUpdates: true)
            }
        }
        return uiImage
    }
    
    
    
    var body: some View {
        VStack {
            Text("Save results to your Photo Library")
                .padding(.leading, -50)
                .padding(.trailing, 20)
                .font(.title)
                .fontWeight(.bold)
            
            textView
            
            Spacer().frame(height: 100)
            
            Button {
                let image = convertViewToUiImage(textView)
                UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
            } label: {
                HStack {
                    Image(systemName: "photo.on.rectangle.angled")
                    Text("Add to Photos")
                }
                .font(.title)
                .foregroundColor(customColor.myntColor)
            }
            
            Spacer()
        } // <- this is the end of the VStack
    } // <- this is the end of the var body: some View
    

} //<- this is the end of the struct TextCardView: View





struct CablePage_Previews: PreviewProvider {
    static var previews: some View {
        CablePage()
    }
}
