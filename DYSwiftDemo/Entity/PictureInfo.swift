import Foundation

class PictureInfo: BaseModel {
    var fileId: String
    var url: String
    var width: Int
    var height: Int
    var type: String

    init(fileId: String, url: String, width: Int, height: Int, type: String) {
        self.fileId = fileId
        self.url = url
        self.width = width
        self.height = height
        self.type = type
        super.init()
    }
}
