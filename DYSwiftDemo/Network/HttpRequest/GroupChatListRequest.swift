import Foundation

class GroupChatListRequest: BaseRequest {
    var page: Int
    var size: Int

    init(page: Int, size: Int) {
        self.page = page
        self.size = size
        super.init()
    }
}
