import SwiftUI

struct MainMenuView: View {
    @StateObject private var viewModel = MainMenuViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hex: "FFFAED")
                    .edgesIgnoringSafeArea(.all)
                
                Image("FirstScreen")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .scaleEffect(0.75)
                    .offset(x: 0, y: -140)
                
                VStack(spacing: 20) {
                    Text("CAPOEIRA EXPERIENCE")
                        .font(.custom("Strange Path", size: 20))
                        .foregroundColor(.black)
                    

                    NavigationLink(destination: ExplanationView(), isActive: $viewModel.isStartActive) {
                        EmptyView()
                    }
                    Button(action: {
                        viewModel.startButtonTapped()
                    }) {
                        ZStack {
                            Image("bottonTest")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                                .cornerRadius(10)
                            
                            Text("START")
                                .font(.custom("Strange Path", size: 20))
                                .foregroundColor(.black)
                        }
                    }
                    .cornerRadius(10)
                    
                    Button(action: {
                        viewModel.aboutButtonTapped()
                    }) {
                        ZStack {
                            Image("bottonTest")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                                .cornerRadius(10)

                            
                            Text("ABOUT")
                                .font(.custom("Strange Path", size: 20))
                                .foregroundColor(.black)

                        }
                    }
                    .padding()
                    .cornerRadius(10)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            }
            .navigationBarHidden(true)
        }
        .navigationBarBackButtonHidden(true)

    }

}
