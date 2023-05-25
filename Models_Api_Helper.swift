//
//  Nba_Api_Helper.swift
//  Assignment1_API
//
//  Created by Sri hari on 24/05/23.
//

import Foundation

class ModelsAPIHelper {
    private static let urlString = "https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformake/honda?format=json"
    
    public static func fetch() async -> Any {
        let modelsapiUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: modelsapiUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
