import Foundation
import Observation

@Observable
class RecipesHandler {
    
    var recipes: [Recipe] = []
    
    private var receipesDictionary: [UUID: Recipe] = [:]
    
    static let shared = RecipesHandler()
    
    init() {
        loadReceipes()
        buildDict()
    }
    
    func getReceipt(BytID id: UUID) -> Recipe? {
        receipesDictionary[id]
    }
    
    private func loadReceipes() {
        recipes = Recipe.generateSampleRecipes()
    }
    
    private func buildDict() {
        for recipe in recipes {
            receipesDictionary[recipe.id] = recipe
        }
    }        
}
