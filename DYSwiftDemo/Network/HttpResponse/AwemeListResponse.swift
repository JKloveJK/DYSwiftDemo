import Foundation

class AwemeListResponse: BaseResponse {
    var data: [Aweme]

    init(data: [Aweme]) {
        self.data = data
        super.init()
    }
}
