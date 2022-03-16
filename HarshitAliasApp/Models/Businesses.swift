
import Foundation
import ObjectMapper

class Businesses: NSObject, Mappable, NSCopying, NSCoding {
    
    var alias: String?
    var url: String?
    var categories: [Categories]?
    var phone: String?
    var reviewCount: Int?
    var price: String?
    var location: Location?
    var displayPhone: String?
    var rating: Int?
    var imageURL: String?
    var name: String?
    var coordinates: Coordinates?
    var distance: Double?
    var id: String?
    var transactions: [String]?
    var isClosed: Bool?

    init(alias: String?, url: String?, categories: [Categories]?, phone: String?, reviewCount: Int?, price: String?, location: Location?, displayPhone: String?, rating: Int?, imageURL: String?, name: String?, coordinates: Coordinates?, distance: Double?, id: String?, transactions: [String]?, isClosed: Bool?) {
        self.alias = alias
        self.url = url
        self.categories = categories
        self.phone = phone
        self.reviewCount = reviewCount
        self.price = price
        self.location = location
        self.displayPhone = displayPhone
        self.rating = rating
        self.imageURL = imageURL
        self.name = name
        self.coordinates = coordinates
        self.distance = distance
        self.id = id
        self.transactions = transactions
        self.isClosed = isClosed
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Businesses(alias: alias, url: url, categories: categories, phone: phone, reviewCount: reviewCount, price: price, location: location, displayPhone: displayPhone, rating: rating, imageURL: imageURL, name: name, coordinates: coordinates, distance: distance, id: id, transactions: transactions, isClosed: isClosed)
    }
    
    override init() {
        self.alias = nil
        self.url = nil
        self.categories = []
        self.phone = nil
        self.reviewCount = nil
        self.price = nil
        self.location = nil
        self.displayPhone = nil
        self.rating = nil
        self.imageURL = nil
        self.name = nil
        self.coordinates = nil
        self.distance = nil
        self.id = nil
        self.transactions = []
        self.isClosed = nil
    }
    
    required public init?(map: Map){
        
    }
    
    public func mapping(map: Map) {
        alias <- map["alias"]
        url <- map["url"]
        categories <- map["categories"]
        phone <- map["phone"]
        reviewCount <- map["review_count"]
        price <- map["price"]
        location <- map["location"]
        displayPhone <- map["displayPhone"]
        rating <- map["rating"]
        imageURL <- map["image_url"]
        name <- map["name"]
        coordinates <- map["coordinates"]
        distance <- map["distance"]
        id <- map["id"]
        transactions <- map["transactions"]
        isClosed <- map["is_closed"]
    }

    required public init(coder aDecoder: NSCoder) {
        
        
    }

    public func encode(with aCoder: NSCoder) {
        
    }
}
