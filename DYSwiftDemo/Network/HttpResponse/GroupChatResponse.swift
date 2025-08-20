import Foundation

class GroupChatResponse: BaseResponse {
    var data: GroupChat

    init(data: GroupChat) {
        self.data = data
        super.init()
    }
}
