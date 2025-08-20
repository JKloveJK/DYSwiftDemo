import Foundation

class Aweme: BaseModel {
    var author: User
    var music: Music
    var cmtSwt: Bool
    var videoText: [VideoText]
    var riskInfos: RiskInfos
    var isTop: Int
    var region: String
    var userDigged: Int
    var chaList: [ChaList]
    var isAds: Bool
    var bodydanceScore: Int
    var lawCriticalCountry: Bool
    var authorUserId: Int
    var createTime: Int
    var statistics: Statistics
    var videoLabels: [VideoLabels]
    var sortLabel: String
    var descendants: Descendants
    var geofencing: [Geofencing]
    var isRelieve: Bool
    var status: Status
    var vrType: Int
    var awemeType: Int
    var awemeId: String
    var video: Video
    var isPgcshow: Bool
    var desc: String
    var isHashTag: Int
    var shareInfo: AwemeShareInfo
    var shareUrl: String
    var scenario: Int
    var labelTop: LabelTop
    var rate: Int
    var canPlay: Bool
    var isVr: Bool
    var textExtra: [TextExtra]

    init(author: User, music: Music, cmtSwt: Bool, videoText: [VideoText], riskInfos: RiskInfos, isTop: Int, region: String, userDigged: Int, chaList: [ChaList], isAds: Bool, bodydanceScore: Int, lawCriticalCountry: Bool, authorUserId: Int, createTime: Int, statistics: Statistics, videoLabels: [VideoLabels], sortLabel: String, descendants: Descendants, geofencing: [Geofencing], isRelieve: Bool, status: Status, vrType: Int, awemeType: Int, awemeId: String, video: Video, isPgcshow: Bool, desc: String, isHashTag: Int, shareInfo: AwemeShareInfo, shareUrl: String, scenario: Int, labelTop: LabelTop, rate: Int, canPlay: Bool, isVr: Bool, textExtra: [TextExtra]) {
        self.author = author
        self.music = music
        self.cmtSwt = cmtSwt
        self.videoText = videoText
        self.riskInfos = riskInfos
        self.isTop = isTop
        self.region = region
        self.userDigged = userDigged
        self.chaList = chaList
        self.isAds = isAds
        self.bodydanceScore = bodydanceScore
        self.lawCriticalCountry = lawCriticalCountry
        self.authorUserId = authorUserId
        self.createTime = createTime
        self.statistics = statistics
        self.videoLabels = videoLabels
        self.sortLabel = sortLabel
        self.descendants = descendants
        self.geofencing = geofencing
        self.isRelieve = isRelieve
        self.status = status
        self.vrType = vrType
        self.awemeType = awemeType
        self.awemeId = awemeId
        self.video = video
        self.isPgcshow = isPgcshow
        self.desc = desc
        self.isHashTag = isHashTag
        self.shareInfo = shareInfo
        self.shareUrl = shareUrl
        self.scenario = scenario
        self.labelTop = labelTop
        self.rate = rate
        self.canPlay = canPlay
        self.isVr = isVr
        self.textExtra = textExtra
        super.init()
    }
}

class VideoText: BaseModel {}

class RiskInfos: BaseModel {
    var warn: Bool
    var content: String
    var riskSink: Bool
    var type: Int

    init(warn: Bool, content: String, riskSink: Bool, type: Int) {
        self.warn = warn
        self.content = content
        self.riskSink = riskSink
        self.type = type
        super.init()
    }
}

class ChaList: BaseModel {
    var author: User
    var userCount: Int
    var schema: String
    var subType: Int
    var desc: String
    var isPgcshow: Bool
    var chaName: String
    var type: Int
    var cid: String

    init(author: User, userCount: Int, schema: String, subType: Int, desc: String, isPgcshow: Bool, chaName: String, type: Int, cid: String) {
        self.author = author
        self.userCount = userCount
        self.schema = schema
        self.subType = subType
        self.desc = desc
        self.isPgcshow = isPgcshow
        self.chaName = chaName
        self.type = type
        self.cid = cid
        super.init()
    }
}

class Statistics: BaseModel {
    var diggCount: Int
    var awemeId: String
    var shareCount: Int
    var playCount: Int
    var commentCount: Int

    init(diggCount: Int, awemeId: String, shareCount: Int, playCount: Int, commentCount: Int) {
        self.diggCount = diggCount
        self.awemeId = awemeId
        self.shareCount = shareCount
        self.playCount = playCount
        self.commentCount = commentCount
        super.init()
    }
}

class VideoLabels: BaseModel {}

class Descendants: BaseModel {
    var notifyMsg: String
    var platforms: [String]

    init(notifyMsg: String, platforms: [String]) {
        self.notifyMsg = notifyMsg
        self.platforms = platforms
        super.init()
    }
}

class Status: BaseModel {
    var allowShare: Bool
    var privateStatus: Int
    var isDelete: Bool
    var withGoods: Bool
    var isPrivate: Bool
    var withFusionGoods: Bool
    var allowComment: Bool

    init(allowShare: Bool, privateStatus: Int, isDelete: Bool, withGoods: Bool, isPrivate: Bool, withFusionGoods: Bool, allowComment: Bool) {
        self.allowShare = allowShare
        self.privateStatus = privateStatus
        self.isDelete = isDelete
        self.withGoods = withGoods
        self.isPrivate = isPrivate
        self.withFusionGoods = withFusionGoods
        self.allowComment = allowComment
        super.init()
    }
}

class AwemeShareInfo: BaseModel {
    var shareWeiboDesc: String
    var shareTitle: String
    var shareUrl: String
    var shareDesc: String

    init(shareWeiboDesc: String, shareTitle: String, shareUrl: String, shareDesc: String) {
        self.shareWeiboDesc = shareWeiboDesc
        self.shareTitle = shareTitle
        self.shareUrl = shareUrl
        self.shareDesc = shareDesc
        super.init()
    }
}

class LabelTop: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class TextExtra: BaseModel {}
