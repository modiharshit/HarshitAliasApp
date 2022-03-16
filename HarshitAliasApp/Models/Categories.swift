
import Foundation
import ObjectMapper

class Categories : NSObject, Mappable, NSCopying, NSCoding {

  var alias : String?
  var title : String?

    init(alias: String?, title: String?) {
        self.alias = alias
        self.title = title
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Categories(alias : alias, title : title)
    }
    
    override init() {
        self.alias = nil
        self.title = nil
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
        alias <- map["alias"]
        title <- map["title"]
    }
    
    // MARK: NSCoding Protocol
    
    required public init(coder aDecoder: NSCoder) {
        
        
    }

    public func encode(with aCoder: NSCoder) {
        
    }
}
