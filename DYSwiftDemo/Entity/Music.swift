import Foundation

class Music: BaseModel {
    var extra: String
    var coverLarge: CoverLarge
    var id: Int
    var coverThumb: CoverThumb
    var mid: String
    var coverHd: CoverHd
    var author: String
    var userCount: Int
    var playUrl: PlayUrl
    var coverMedium: CoverMedium
    var idStr: String
    var title: String
    var offlineDesc: String
    var isRestricted: Bool
    var schemaUrl: String
    var sourcePlatform: Int
    var duration: Int
    var status: Int
    var isOriginal: Bool

    init(extra: String, coverLarge: CoverLarge, id: Int, coverThumb: CoverThumb, mid: String, coverHd: CoverHd, author: String, userCount: Int, playUrl: PlayUrl, coverMedium: CoverMedium, idStr: String, title: String, offlineDesc: String, isRestricted: Bool, schemaUrl: String, sourcePlatform: Int, duration: Int, status: Int, isOriginal: Bool) {
        self.extra = extra
        self.coverLarge = coverLarge
        self.id = id
        self.coverThumb = coverThumb
        self.mid = mid
        self.coverHd = coverHd
        self.author = author
        self.userCount = userCount
        self.playUrl = playUrl
        self.coverMedium = coverMedium
        self.idStr = idStr
        self.title = title
        self.offlineDesc = offlineDesc
        self.isRestricted = isRestricted
        self.schemaUrl = schemaUrl
        self.sourcePlatform = sourcePlatform
        self.duration = duration
        self.status = status
        self.isOriginal = isOriginal
        super.init()
    }
}

class CoverLarge: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class CoverThumb: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class CoverMedium: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class CoverHd: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class PlayUrl: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}
