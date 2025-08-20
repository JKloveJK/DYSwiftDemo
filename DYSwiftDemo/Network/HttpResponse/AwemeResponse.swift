import Foundation

class AwemeResponse: BaseResponse {
    var data: Aweme

    init(data: Aweme) {
        self.data = data
        super.init()
    }
}
