import Foundation

class Comment: BaseModel {
    var cid: String
    var status: Int
    var text: String
    var diggCount: Int
    var createTime: Int
    var replyId: String
    var awemeId: String
    var userDigged: Int
    var textExtra: [Any]
    var userType: String
    var user: User
    var visitor: Visitor
    var isTemp: Bool
    var taskId: Int

    init(cid: String, status: Int, text: String, diggCount: Int, createTime: Int, replyId: String, awemeId: String, userDigged: Int, textExtra: [Any], userType: String, user: User, visitor: Visitor, isTemp: Bool, taskId: Int) {
        self.cid = cid
        self.status = status
        self.text = text
        self.diggCount = diggCount
        self.createTime = createTime
        self.replyId = replyId
        self.awemeId = awemeId
        self.userDigged = userDigged
        self.textExtra = textExtra
        self.userType = userType
        self.user = user
        self.visitor = visitor
        self.isTemp = isTemp
        self.taskId = taskId
        super.init()
    }

    convenience init(awemeId: String, text: String, taskId: Int) {
        self.init(cid: "", status: 0, text: text, diggCount: 0, createTime: Int(Date().timeIntervalSince1970), replyId: "", awemeId: awemeId, userDigged: 0, textExtra: [], userType: "", user: User(), visitor: Visitor(), isTemp: true, taskId: taskId)
    }
}
