//
//  F1_Helper.swift
//  Assignment1_API
//
//  Created by Sri hari on 24/05/23.
//

import Foundation

class NoctuaSkyHelper {
    private static let urlString = "https://api.noctuasky.com/api/v1/openapi.json"
    
    public static func fetch() async -> Any {
        let noctuaskyUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: noctuaskyUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}
