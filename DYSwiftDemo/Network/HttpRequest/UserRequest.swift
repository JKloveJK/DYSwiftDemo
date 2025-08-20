import Foundation

class UserRequest: BaseRequest {
    var uid: String

    init(uid: String) {
        self.uid = uid
        super.init()
    }
}
