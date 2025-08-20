import Foundation

class GroupChatListResponse: BaseResponse {
    var data: [GroupChat]

    init(data: [GroupChat]) {
        self.data = data
        super.init()
    }
}
