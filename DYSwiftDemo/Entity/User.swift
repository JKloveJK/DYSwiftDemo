import Foundation

class User: BaseModel {
    var weiboName: String
    var googleAccount: String
    var specialLock: Int
    var isBindedWeibo: Bool
    var shieldFollowNotice: Int
    var userCanceled: Bool
    var avatarLarger: Avatar
    var acceptPrivatePolicy: Bool
    var followStatus: Int
    var withCommerceEntry: Bool
    var originalMusicQrcode: String
    var authorityStatus: Int
    var youtubeChannelTitle: String
    var isAdFake: Bool
    var preventDownload: Bool
    var verificationType: Int
    var isGovMediaVip: Bool
    var weiboUrl: String
    var twitterId: String
    var needRecommend: Int
    var commentSetting: Int
    var status: Int
    var uniqueId: String
    var hideLocation: Bool
    var enterpriseVerifyReason: String
    var awemeCount: Int
    var storyCount: Int
    var uniqueIdModifyTime: Int
    var followerCount: Int
    var appleAccount: Int
    var shortId: String
    var accountRegion: String
    var signature: String
    var twitterName: String
    var avatarMedium: Avatar
    var verifyInfo: String
    var createTime: Int
    var storyOpen: Bool
    var policyVersion: PolicyVersion
    var region: String
    var hideSearch: Bool
    var avatarThumb: Avatar
    var schoolPoiId: String
    var shieldCommentNotice: Int
    var totalFavorited: Int
    var videoIcon: VideoIcon
    var originalMusicCover: String
    var followingCount: Int
    var shieldDiggNotice: Int
    var geofencing: [Geofencing]
    var bindPhone: String
    var hasEmail: Bool
    var liveVerify: Int
    var birthday: String
    var duetSetting: Int
    var insId: String
    var followerStatus: Int
    var liveAgreement: Int
    var neiguangShield: Int
    var uid: String
    var secret: Int
    var isPhoneBinded: Bool
    var liveAgreementTime: Int
    var weiboSchema: String
    var isVerified: Bool
    var customVerify: String
    var commerceUserLevel: Int
    var gender: Int
    var hasOrders: Bool
    var youtubeChannelId: String
    var reflowPageGid: Int
    var reflowPageUid: Int
    var nickname: String
    var schoolType: Int
    var avatarUri: String
    var weiboVerify: String
    var favoritingCount: Int
    var shareQrcodeUri: String
    var roomId: Int
    var constellation: Int
    var schoolName: String
    var activity: Activity
    var userRate: Int
    var videoIconVirtualURI: String

    init(weiboName: String, googleAccount: String, specialLock: Int, isBindedWeibo: Bool, shieldFollowNotice: Int, userCanceled: Bool, avatarLarger: Avatar, acceptPrivatePolicy: Bool, followStatus: Int, withCommerceEntry: Bool, originalMusicQrcode: String, authorityStatus: Int, youtubeChannelTitle: String, isAdFake: Bool, preventDownload: Bool, verificationType: Int, isGovMediaVip: Bool, weiboUrl: String, twitterId: String, needRecommend: Int, commentSetting: Int, status: Int, uniqueId: String, hideLocation: Bool, enterpriseVerifyReason: String, awemeCount: Int, storyCount: Int, uniqueIdModifyTime: Int, followerCount: Int, appleAccount: Int, shortId: String, accountRegion: String, signature: String, twitterName: String, avatarMedium: Avatar, verifyInfo: String, createTime: Int, storyOpen: Bool, policyVersion: PolicyVersion, region: String, hideSearch: Bool, avatarThumb: Avatar, schoolPoiId: String, shieldCommentNotice: Int, totalFavorited: Int, videoIcon: VideoIcon, originalMusicCover: String, followingCount: Int, shieldDiggNotice: Int, geofencing: [Geofencing], bindPhone: String, hasEmail: Bool, liveVerify: Int, birthday: String, duetSetting: Int, insId: String, followerStatus: Int, liveAgreement: Int, neiguangShield: Int, uid: String, secret: Int, isPhoneBinded: Bool, liveAgreementTime: Int, weiboSchema: String, isVerified: Bool, customVerify: String, commerceUserLevel: Int, gender: Int, hasOrders: Bool, youtubeChannelId: String, reflowPageGid: Int, reflowPageUid: Int, nickname: String, schoolType: Int, avatarUri: String, weiboVerify: String, favoritingCount: Int, shareQrcodeUri: String, roomId: Int, constellation: Int, schoolName: String, activity: Activity, userRate: Int, videoIconVirtualURI: String) {
        self.weiboName = weiboName
        self.googleAccount = googleAccount
        self.specialLock = specialLock
        self.isBindedWeibo = isBindedWeibo
        self.shieldFollowNotice = shieldFollowNotice
        self.userCanceled = userCanceled
        self.avatarLarger = avatarLarger
        self.acceptPrivatePolicy = acceptPrivatePolicy
        self.followStatus = followStatus
        self.withCommerceEntry = withCommerceEntry
        self.originalMusicQrcode = originalMusicQrcode
        self.authorityStatus = authorityStatus
        self.youtubeChannelTitle = youtubeChannelTitle
        self.isAdFake = isAdFake
        self.preventDownload = preventDownload
        self.verificationType = verificationType
        self.isGovMediaVip = isGovMediaVip
        self.weiboUrl = weiboUrl
        self.twitterId = twitterId
        self.needRecommend = needRecommend
        self.commentSetting = commentSetting
        self.status = status
        self.uniqueId = uniqueId
        self.hideLocation = hideLocation
        self.enterpriseVerifyReason = enterpriseVerifyReason
        self.awemeCount = awemeCount
        self.storyCount = storyCount
        self.uniqueIdModifyTime = uniqueIdModifyTime
        self.followerCount = followerCount
        self.appleAccount = appleAccount
        self.shortId = shortId
        self.accountRegion = accountRegion
        self.signature = signature
        self.twitterName = twitterName
        self.avatarMedium = avatarMedium
        self.verifyInfo = verifyInfo
        self.createTime = createTime
        self.storyOpen = storyOpen
        self.policyVersion = policyVersion
        self.region = region
        self.hideSearch = hideSearch
        self.avatarThumb = avatarThumb
        self.schoolPoiId = schoolPoiId
        self.shieldCommentNotice = shieldCommentNotice
        self.totalFavorited = totalFavorited
        self.videoIcon = videoIcon
        self.originalMusicCover = originalMusicCover
        self.followingCount = followingCount
        self.shieldDiggNotice = shieldDiggNotice
        self.geofencing = geofencing
        self.bindPhone = bindPhone
        self.hasEmail = hasEmail
        self.liveVerify = liveVerify
        self.birthday = birthday
        self.duetSetting = duetSetting
        self.insId = insId
        self.followerStatus = followerStatus
        self.liveAgreement = liveAgreement
        self.neiguangShield = neiguangShield
        self.uid = uid
        self.secret = secret
        self.isPhoneBinded = isPhoneBinded
        self.liveAgreementTime = liveAgreementTime
        self.weiboSchema = weiboSchema
        self.isVerified = isVerified
        self.customVerify = customVerify
        self.commerceUserLevel = commerceUserLevel
        self.gender = gender
        self.hasOrders = hasOrders
        self.youtubeChannelId = youtubeChannelId
        self.reflowPageGid = reflowPageGid
        self.reflowPageUid = reflowPageUid
        self.nickname = nickname
        self.schoolType = schoolType
        self.avatarUri = avatarUri
        self.weiboVerify = weiboVerify
        self.favoritingCount = favoritingCount
        self.shareQrcodeUri = shareQrcodeUri
        self.roomId = roomId
        self.constellation = constellation
        self.schoolName = schoolName
        self.activity = activity
        self.userRate = userRate
        self.videoIconVirtualURI = videoIconVirtualURI
        super.init()
    }
}

class Avatar: BaseModel {
    var urlList: [String]
    var uri: String

    init(urlList: [String], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class PolicyVersion: BaseModel {}

class UrlList: BaseModel {}

class VideoIcon: BaseModel {
    var urlList: [UrlList]
    var uri: String

    init(urlList: [UrlList], uri: String) {
        self.urlList = urlList
        self.uri = uri
        super.init()
    }
}

class Geofencing: BaseModel {}

class Activity: BaseModel {
    var diggCount: Int
    var useMusicCount: Int

    init(diggCount: Int, useMusicCount: Int) {
        self.diggCount = diggCount
        self.useMusicCount = useMusicCount
        super.init()
    }
}
