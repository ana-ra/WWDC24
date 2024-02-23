
import SwiftUI

struct InstrumentCardView: View {
    var userName: String
    @Environment(\.presentationMode) var presentationMode
    @StateObject private var viewModel = InstrumentViewModel()
    public var columns: [GridItem] = Array(repeating: .init(.flexible(), spacing: -35), count: 3)

    
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
                
                Text(" \(userName) SOMETHING INTERESTING IS THAT CAPOEIRA    WAS DEVELOPED AS A CAMOUFLAGED FORM OF   SELF-DEFENSE, ACCOMPANYING THE SOUND OF MUSICAL   INSTRUMENTS  AS PRACTITIONERS PERFORMED  FLUID   MOVEMENTS, TRANSFORMING  THE FIGHT  INTO A   RHYTHMIC DANCE.   LET'S FIND OUT MORE ABOUT THESE INSTRUMENTS BY   CLICKING ON!")
                    .font(.custom("Strange Path", size: 10))
                    .foregroundColor(.black)
                    .lineSpacing(12)
                    .padding(.horizontal, 20)
                    .frame(width: 400, height: 400)
                    .multilineTextAlignment(.leading)
                    .offset(y: -250)
                
                VStack{
                    LazyVGrid(columns: columns, spacing: 29) {
                        ForEach(viewModel.instruments, id: \.name) { instrument in
                            Button(action: {
                                viewModel.toggleSelection(for: instrument.name)
                            }) {
                                Image(instrument.isSelected ? instrument.selectedImageName : instrument.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(height: 150)
                                    .cornerRadius(8)
                            }
                        }
                    }
                    .padding(.top, 150)
                    .offset(y: -50)

                }
                
                NavigationLink(destination: ChangeView(userName: userName)) {
                    ZStack {
                        Image("bottonTest")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 40)
                            .cornerRadius(10)
                            .background(Color(hex: "FFFAED"))
                        
                        Text("NEXT")
                            .font(.custom("Strange Path", size: 14))
                            .foregroundColor(.black)
                    }
                }
                .cornerRadius(10)
                .offset(y: 280)
            }
        }
        .navigationBarBackButtonHidden(true)

    }
    
    struct InstrumentCardView_Previews: PreviewProvider {
        static var previews: some View {
            InstrumentCardView(userName: "JOÃO")
        }
    }
}
