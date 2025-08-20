import Foundation

class CommentListRequest: BaseRequest {
    var page: Int
    var size: Int
    var awemeId: String

    init(page: Int, size: Int, awemeId: String) {
        self.page = page
        self.size = size
        self.awemeId = awemeId
        super.init()
    }
}
