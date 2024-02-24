
import SwiftUI

struct FinalView: View {
    @Environment(\.presentationMode) var presentationMode
    var userName: String

    var body: some View {
        NavigationView{
            ZStack{
                
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
                
                Text(" \(userName)THANK YOU VERY MUCH FOR YOUR TIME, I HOPE YOU ENJOYED THE CAPOEIRA EXPERIENCE. OVER TIME, CAPOEIRA HAS TRANSCENDED ITS ORIGINS AND BECOME AN INTERNATIONALLY RECOGNIZED PRACTICE. IN 2014, UNESCO RECOGNIZED CAPOEIRA AS INTANGIBLE CULTURAL HERITAGE OF HUMANITY, HIGHLIGHTING ITS IMPORTANCE IN PRESERVING BRAZILIAN CULTURE AND HISTORY.")
                    .font(.custom("Strange Path", size: 10))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .lineSpacing(12)
                    .padding(.horizontal)
                    .offset(y: -250)
                
                Image("finalView")
                    .scaleEffect(0.25)
                    .frame(width: 300, height: 100)
                
                NavigationLink(destination: MainMenuView()) {
                    ZStack {
                        Image("bottonTest")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                            .cornerRadius(10)
                            .background(Color(hex: "FFFAED"))
                        
                        Text("END")
                            .font(.custom("Strange Path", size: 14))
                            .foregroundColor(.black)
                    }
                }
                .padding()
                .cornerRadius(10)
                .offset(y: 230)

                
            }
            
        }
        .navigationBarBackButtonHidden(true)

    }
}

#Preview {
    FinalView(userName: "João")
}
