import UIKit

class GroupChat: BaseModel {
    var id: String
    var msgType: String
    var msgContent: String
    var visitor: Visitor
    var picOriginal: PictureInfo
    var picLarge: PictureInfo
    var picMedium: PictureInfo
    var picThumbnail: PictureInfo
    var createTime: Int
    var taskId: Int
    var isTemp: Bool
    var isFailed: Bool
    var isCompleted: Bool
    var percent: CGFloat
    var picImage: UIImage
    var contentSize: CGSize
    var cellHeight: CGFloat
    var cellAttributedString: NSMutableAttributedString

    init(id: String, msgType: String, msgContent: String, visitor: Visitor, picOriginal: PictureInfo, picLarge: PictureInfo, picMedium: PictureInfo, picThumbnail: PictureInfo, createTime: Int, taskId: Int, isTemp: Bool, isFailed: Bool, isCompleted: Bool, percent: CGFloat, picImage: UIImage, contentSize: CGSize, cellHeight: CGFloat, cellAttributedString: NSMutableAttributedString) {
        self.id = id
        self.msgType = msgType
        self.msgContent = msgContent
        self.visitor = visitor
        self.picOriginal = picOriginal
        self.picLarge = picLarge
        self.picMedium = picMedium
        self.picThumbnail = picThumbnail
        self.createTime = createTime
        self.taskId = taskId
        self.isTemp = isTemp
        self.isFailed = isFailed
        self.isCompleted = isCompleted
        self.percent = percent
        self.picImage = picImage
        self.contentSize = contentSize
        self.cellHeight = cellHeight
        self.cellAttributedString = cellAttributedString
        super.init()
    }

    convenience init(image: UIImage) {
        let picInfo = PictureInfo(width: Int(image.size.width), height: Int(image.size.height))
        self.init(id: "", msgType: "image", msgContent: "", visitor: Visitor(), picOriginal: picInfo, picLarge: picInfo, picMedium: picInfo, picThumbnail: picInfo, createTime: 0, taskId: 0, isTemp: true, isFailed: false, isCompleted: false, percent: 0.0, picImage: image, contentSize: CGSize.zero, cellHeight: 0.0, cellAttributedString: NSMutableAttributedString())
    }

    convenience init(text: String) {
        self.init(id: "", msgType: "text", msgContent: text, visitor: Visitor(), picOriginal: PictureInfo(), picLarge: PictureInfo(), picMedium: PictureInfo(), picThumbnail: PictureInfo(), createTime: 0, taskId: 0, isTemp: true, isFailed: false, isCompleted: false, percent: 0.0, picImage: UIImage(), contentSize: CGSize.zero, cellHeight: 0.0, cellAttributedString: NSMutableAttributedString())
    }

    func updateTempImageChat(chat: GroupChat) -> GroupChat {
        self.id = chat.id
        self.picOriginal = chat.picOriginal
        self.picLarge = chat.picLarge
        self.picMedium = chat.picMedium
        self.picThumbnail = chat.picThumbnail
        self.createTime = chat.createTime
        self.isTemp = true
        self.percent = 1.0
        self.isCompleted = true
        self.isFailed = false
        return self
    }

    func updateTempTextChat(chat: GroupChat) -> GroupChat {
        self.id = chat.id
        self.createTime = chat.createTime
        self.isTemp = true
        self.isCompleted = true
        self.isFailed = false
        return self
    }

    class func propertyIsIgnored(_ propertyName: String) -> Bool {
        return ["taskId", "isTemp", "picImage", "contentSize", "cellHeight", "cellAttributedString"].contains(propertyName)
    }
}
