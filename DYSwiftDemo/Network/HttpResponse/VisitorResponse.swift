import Foundation

class VisitorResponse: BaseResponse {
    var data: Visitor

    init(data: Visitor) {
        self.data = data
        super.init()
    }
}
