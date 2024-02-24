import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationStack{
                AnimationView(userName: "JOAO", selectedMovementIDs: [1, 2, 3, 4])
            }

        }
    }
}
