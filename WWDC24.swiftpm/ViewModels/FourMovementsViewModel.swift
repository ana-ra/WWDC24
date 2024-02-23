import Foundation

class FourMovementsViewModel: ObservableObject {
    @Published var movements: [MovementsModel] = []
    @Published var selectionLimitReached = false

    init() {
        movements = [
            MovementsModel(id: 1, imageName: "Armada1", isSelected: false),
            MovementsModel(id: 2, imageName: "Negativa1", isSelected: false),
            MovementsModel(id: 3, imageName: "Au1", isSelected: false),
            MovementsModel(id: 4, imageName: "Bencao1", isSelected: false),
            MovementsModel(id: 5, imageName: "Meialua1", isSelected: false),
            MovementsModel(id: 6, imageName: "Martelo1", isSelected: false),
            MovementsModel(id: 7, imageName: "Voador1", isSelected: false)
        ]
    }

    func toggleSelection(for movementId: Int) {
        if let index = movements.firstIndex(where: { $0.id == movementId }) {
            if !movements[index].isSelected {
                let selectedCount = movements.filter { $0.isSelected }.count
                if selectedCount < 4 {
                    movements[index].isSelected.toggle()
                } else {
                    selectionLimitReached = true
                }
            } else {
                movements[index].isSelected.toggle()
                if selectionLimitReached {
                    selectionLimitReached = false
                }
            }
        }
    }

    var selectedMovementIDs: [Int] {
        movements.filter { $0.isSelected }.map { $0.id }
    }
}
