//
//  ContentView.swift
//  RecipeListApp
//
//  Created by Theo Dryden on 16/02/2023.
//

import SwiftUI

struct RecipeListView: View {
    
    // Special property wrapper @EnvironmentOject, specify data type of model: RecipeModel
    @EnvironmentObject var model: RecipeModel
    
    var body: some View {
        
        NavigationView {
            
            // Calls Upon the receipes JSON file using the model format
            List(model.recipes) { r in
                
                // Calls the view file to display the model and displays the items in the index
                NavigationLink(destination: RecipeDetailView(recipe: r), label: {
                    
                    HStack(spacing: 20) {
                        
                        // Create an instance of the image variable stored in the JSON File 
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        
                        // Creates an instance of the name variable stored in the JSON File
                        Text(r.name)
                        
                    }
                })
            }
            .navigationBarTitle("All Recipes")
        }
      
        
        
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
