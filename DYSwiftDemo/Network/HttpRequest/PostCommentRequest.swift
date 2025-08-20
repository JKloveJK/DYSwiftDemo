import Foundation

class PostCommentRequest: BaseRequest {
    var awemeId: String
    var udid: String
    var text: String

    init(awemeId: String, udid: String, text: String) {
        self.awemeId = awemeId
        self.udid = udid
        self.text = text
        super.init()
    }
}
