//
//  HomeViewModel.h
//  DYSwiftDemo
//
//  Created by Jiankai Lei on 2025/8/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewModel : NSObject

@property (nonatomic, strong, readonly) NSArray *recommendVideos;
@property (nonatomic, strong, readonly) NSArray *followingVideos;

- (void)fetchRecommendVideosWithCompletion:(void(^)(BOOL success, NSError * _Nullable error))completion;
- (void)fetchFollowingVideosWithCompletion:(void(^)(BOOL success, NSError * _Nullable error))completion;


@end

NS_ASSUME_NONNULL_END
