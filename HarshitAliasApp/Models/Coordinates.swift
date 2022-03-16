
import Foundation
import ObjectMapper

class Coordinates : NSObject, Mappable, NSCopying, NSCoding {

  var latitude : Double?
  var longitude : Double?

    init(latitude: Double?, longitude: Double?) {
        self.latitude = latitude
        self.longitude = longitude
        
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Coordinates(latitude : latitude, longitude : longitude)
    }
    
    override init() {
        self.latitude = nil
        self.longitude = nil
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
        latitude <- map["latitude"]
        longitude <- map["longitude"]
    }
    
    // MARK: NSCoding Protocol
    
    required public init(coder aDecoder: NSCoder) {
        
        
    }

    public func encode(with aCoder: NSCoder) {
        
    }
}
