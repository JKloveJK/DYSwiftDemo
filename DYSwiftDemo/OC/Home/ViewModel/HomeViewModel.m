//
//  HomeViewModel.m
//  DYSwiftDemo
//
//  Created by Jiankai Lei on 2025/8/26.
//

#import "HomeViewModel.h"

@interface HomeViewModel ()

@property (nonatomic, strong, readwrite) NSArray *recommendVideos;
@property (nonatomic, strong, readwrite) NSArray *followingVideos;

@end

@implementation HomeViewModel

- (instancetype)init {
    self = [super init];
    if (self) {
        _recommendVideos = [NSArray array];
        _followingVideos = [NSArray array];
    }
    return self;
}

- (void)fetchRecommendVideosWithCompletion:(void (^)(BOOL, NSError * _Nullable))completion {
    // TODO: 实现网络请求，获取推荐视频数据
    // 这里先模拟一些数据
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.recommendVideos = @[@"视频1", @"视频2", @"视频3"];
        if (completion) {
            completion(YES, nil);
        }
    });
}

- (void)fetchFollowingVideosWithCompletion:(void (^)(BOOL, NSError * _Nullable))completion {
    // TODO: 实现网络请求，获取关注视频数据
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        self.followingVideos = @[@"关注视频1", @"关注视频2"];
        if (completion) {
            completion(YES, nil);
        }
    });
}

@end
