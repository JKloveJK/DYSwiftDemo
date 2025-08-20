import Foundation

class PostGroupChatTextRequest: BaseRequest {
    var udid: String
    var text: String

    init(udid: String, text: String) {
        self.udid = udid
        self.text = text
        super.init()
    }
}
