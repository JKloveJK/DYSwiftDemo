import Foundation

class Visitor: BaseModel {
    var uid: String
    var udid: String
    var avatarThumbnail: PictureInfo
    var avatarMedium: PictureInfo
    var avatarLarge: PictureInfo

    init(uid: String, udid: String, avatarThumbnail: PictureInfo, avatarMedium: PictureInfo, avatarLarge: PictureInfo) {
        self.uid = uid
        self.udid = udid
        self.avatarThumbnail = avatarThumbnail
        self.avatarMedium = avatarMedium
        self.avatarLarge = avatarLarge
        super.init()
    }

    func formatUDID() -> String {
        if udid.count < 8 { return "************" }
        var formattedUdid = udid
        let start = formattedUdid.index(formattedUdid.startIndex, offsetBy: 4)
        let end = formattedUdid.index(formattedUdid.endIndex, offsetBy: -4)
        formattedUdid.replaceSubrange(start..<end, with: String(repeating: "*", count: udid.count - 8))
        return formattedUdid
    }
}
