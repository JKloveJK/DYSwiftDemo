import Foundation

class Video: BaseModel {
    var dynamicCover: DynamicCover
    var playAddrLowbr: PlayAddrLowbr
    var width: Int
    var ratio: String
    var playAddr: PlayAddr
    var cover: Cover
    var height: Int
    var bitRate: [BitRate]
    var originCover: OriginCover
    var duration: Int
    var downloadAddr: DownloadAddr
    var hasWatermark: Bool

    init(dynamicCover: DynamicCover, playAddrLowbr: PlayAddrLowbr, width: Int, ratio: String, playAddr: PlayAddr, cover: Cover, height: Int, bitRate: [BitRate], originCover: OriginCover, duration: Int, downloadAddr: DownloadAddr, hasWatermark: Bool) {
        self.dynamicCover = dynamicCover
        self.playAddrLowbr = playAddrLowbr
        self.width = width
        self.ratio = ratio
        self.playAddr = playAddr
        self.cover = cover
        self.height = height
        self.bitRate = bitRate
        self.originCover = originCover
        self.duration = duration
        self.downloadAddr = downloadAddr
        self.hasWatermark = hasWatermark
        super.init()
    }
}

class DynamicCover: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class PlayAddrLowbr: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class PlayAddr: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class Cover: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class BitRate: BaseModel {
    var bitRate: Int
    var gearName: String
    var qualityType: Int

    init(bitRate: Int, gearName: String, qualityType: Int) {
        self.bitRate = bitRate
        self.gearName = gearName
        self.qualityType = qualityType
        super.init()
    }
}

class OriginCover: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class DownloadAddr: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}
