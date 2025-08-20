import Foundation

class BaseModel: JSONModel {
    class func propertyIsOptional(_ propertyName: String) -> Bool {
        return true
    }
}
