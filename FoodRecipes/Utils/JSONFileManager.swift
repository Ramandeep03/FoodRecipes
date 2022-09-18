//
//  JSONFileManager.swift
//  FoodRecipes
//
//  Created by Ramandeep Singh on 16/09/22.
//

import Foundation

class JSONFileManager {
    
    
    static func load<T: Decodable>(_ filename:String) -> T {
        let data:Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)else{
            fatalError("Couldn't find the file name in main Bundle: \(filename).")
        }
        
        do{
            data = try Data(contentsOf: file)
        }catch{
            fatalError("File couldn't be loaded \(filename).")
        }
        
        do{
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        }catch{
            fatalError("Cannot parse the file \(filename)")
        }
    }
    
}
