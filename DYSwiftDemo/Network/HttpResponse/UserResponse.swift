import Foundation

class UserResponse: BaseResponse {
    var data: User

    init(data: User) {
        self.data = data
        super.init()
    }
}
