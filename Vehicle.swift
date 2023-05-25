//
//  Football_API_Helper.swift
//  Assignment1_API
//
//  Created by Sri hari on 24/05/23.
//

import Foundation
class VehicleApiHelper {
    private static let urlString = "https://vpic.nhtsa.dot.gov/api/vehicles/GetParts?type=565&fromDate=1/1/2015&toDate=5/5/2015&format=json"
    
    public static func fetch() async -> Any {
        let vehicleUrl =  URL(string: urlString)!
        let (data, _) = try! await URLSession.shared.data(from: vehicleUrl)
        
        let jsonObject = try! JSONSerialization.jsonObject(with: data)
        return jsonObject
    }
}

