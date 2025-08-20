import Foundation

class PostGroupChatImageRequest: BaseRequest {
    var udid: String

    init(udid: String) {
        self.udid = udid
        super.init()
    }
}
