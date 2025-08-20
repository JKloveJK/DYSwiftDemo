import Foundation

class BaseResponse: Codable {
    var code: Int
    var message: String
    var hasMore: Int
    var totalCount: Int

    init(code: Int, message: String, hasMore: Int, totalCount: Int) {
        self.code = code
        self.message = message
        self.hasMore = hasMore
        self.totalCount = totalCount
    }

    class func propertyIsOptional(_ propertyName: String) -> Bool {
        return true
    }
}
