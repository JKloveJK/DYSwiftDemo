import Foundation

class DeleteCommentRequest: BaseRequest {
    var cid: String
    var udid: String

    init(cid: String, udid: String) {
        self.cid = cid
        self.udid = udid
        super.init()
    }
}
