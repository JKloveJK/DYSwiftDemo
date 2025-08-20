import Foundation

class CommentResponse: BaseResponse {
    var data: Comment

    init(data: Comment) {
        self.data = data
        super.init()
    }
}
