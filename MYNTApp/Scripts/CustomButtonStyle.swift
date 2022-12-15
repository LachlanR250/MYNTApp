import SwiftUI
import CoreData

struct customColor {
    static let myColor = Color("mycolor")
    static let myntColor = Color("MYNTGreen")
    static let lightGray = Color("lightGray")
}

struct CustomButtonStyle: ButtonStyle {

    private struct CustomButtonStyleView<V: View>: View {
        @State private var isOverButton = false

        let content: () -> V

        var body: some View {
            ZStack {
                content()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(customColor.myntColor)
            }
            .padding(3)
            .onHover { over in
                self.isOverButton = over
                print("isOverButton:", self.isOverButton, "over:", over)
            }
            .overlay(VStack {
                if self.isOverButton {
                    Rectangle()
                        .stroke(Color.blue, lineWidth: 2)
                } else {
                    EmptyView()
                }
            })
        }
    }

    func makeBody(configuration: Self.Configuration) -> some View {
        CustomButtonStyleView { configuration.label }
    }
}


    



