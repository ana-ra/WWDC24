import SwiftUI

struct AboutView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "FFFAED")
                    .edgesIgnoringSafeArea(.all)
                
                    .navigationBarItems(leading: Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Text("< BACK")
                        }
                        .font(.custom("Strange Path", size: 12))
                        .foregroundColor(.black)
                        .background(Color(hex: "FFFAED"))
                    })
                
            }
        }
        .navigationBarBackButtonHidden(true)

    }
}


struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
