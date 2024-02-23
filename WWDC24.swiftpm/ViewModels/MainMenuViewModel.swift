import Foundation

class MainMenuViewModel: ObservableObject {
    func aboutButtonTapped() {
        print("About button tapped")
    }
    
    @Published var isStartActive: Bool = false
    func startButtonTapped() {
        isStartActive = true
    }
}
