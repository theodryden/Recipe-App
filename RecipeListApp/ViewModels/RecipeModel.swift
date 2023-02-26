//
//  RecipeModel.swift
//  RecipeListApp
//
//  Created by Theo Dryden on 16/02/2023.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        
    }
    
}
