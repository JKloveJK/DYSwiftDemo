import Foundation

class AwemeListRequest: BaseRequest {
    var page: Int
    var size: Int
    var uid: String

    init(page: Int, size: Int, uid: String) {
        self.page = page
        self.size = size
        self.uid = uid
        super.init()
    }
}
