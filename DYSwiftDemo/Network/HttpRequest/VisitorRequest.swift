import Foundation

class VisitorRequest: BaseRequest {
    var udid: String

    init(udid: String) {
        self.udid = udid
        super.init()
    }
}
