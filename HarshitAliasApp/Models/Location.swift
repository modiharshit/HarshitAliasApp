
import Foundation
import UIKit
import ObjectMapper

class Location: NSObject, Mappable, NSCopying, NSCoding {
    
    // MARK: Properties
    
    var address1       : String?
    var address2       : String?
    var address3       : String?
    var city           : String?
    var zipCode        : String?
    var country        : String?
    var state          : String?
    var displayAddress : [String]?
    
    init(address1: String?, address2: String?, address3: String?, city: String?, zipCode: String?, country: String?, state: String?, displayAddress: [String]?) {
        self.address1 = address1
        self.address2 = address2
        self.address3 = address3
        self.city = city
        self.zipCode = zipCode
        self.country = country
        self.state = state
        self.displayAddress = displayAddress
        
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Location(address1 : address1, address2 : address2, address3: address3, city: city, zipCode: zipCode, country : country, state : state, displayAddress: displayAddress)
    }
    
    override init() {
        self.address1 = nil
        self.address2 = nil
        self.address3 = nil
        self.city = nil
        self.zipCode = nil
        self.country = nil
        self.state = nil
        self.displayAddress = []
    }
    
    // MARK: ObjectMapper Initalizers
    /**
     Map a JSON object to this class using ObjectMapper
     - parameter map: A mapping from ObjectMapper
     */
    required public init?(map: Map){
        
    }
    
    /**
     Map a JSON object to this class using ObjectMapper
     - parameter map: A mapping from ObjectMapper
     */
    public func mapping(map: Map) {
        address1 <- map["address1"]
        address2 <- map["address2"]
        address3 <- map["address3"]
        city <- map["city"]
        zipCode <- map["zip_code"]
        country <- map["country"]
        state <- map["state"]
        displayAddress <- map["display_address"]
    }
    
    // MARK: NSCoding Protocol
    
    required public init(coder aDecoder: NSCoder) {
        
        
    }

    public func encode(with aCoder: NSCoder) {
        
    }
}
