//
//  ApiNames.swift
//  HarshitAliasApp
//
//  Created by Harshit Modi on 2022-03-15.
//

import Foundation
import UIKit
import Alamofire

let clientId = "EZ92MlET_lW-X8EdZCwSsg"
let apiKey = "_Zp5b95A6CfDytSInMk9pHcq19SJHSF5U0qw60ARzBj1CIYuUyXZorQeQAdHeyR1zuytndvTv7mtqwaPUv_a1KoUS6k3xiNuPsNalSLbsFqyr29KZkUmAy1fexIxYnYx"

let BASE_URL = "https://api.yelp.com/v3/"

let GET_GROCERIES   = BASE_URL + "businesses/search?term=delis&"
let GET_RESTAURANTS = BASE_URL + "businesses/search?"

var userLatitude = "43.6502"
var userLongitude = "79.9036"

var authHeader: HTTPHeaders = ["Authorization": "Bearer \(apiKey)",
                              "Content-Type" : "application/json"]
