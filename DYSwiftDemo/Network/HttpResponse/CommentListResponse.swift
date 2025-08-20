import Foundation

class CommentListResponse: BaseResponse {
    var data: [Comment]

    init(data: [Comment]) {
        self.data = data
        super.init()
    }
}
