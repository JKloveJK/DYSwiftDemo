import Foundation

class DeleteGroupChatRequest: BaseRequest {
    var id: String
    var udid: String

    init(id: String, udid: String) {
        self.id = id
        self.udid = udid
        super.init()
    }
}
