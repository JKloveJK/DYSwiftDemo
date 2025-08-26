//
//  VideoCell.m
//  DYSwiftDemo
//
//  Created by Jiankai Lei on 2025/8/26.
//

#import "VideoCell.h"
#import <Masonry/Masonry.h>

@interface VideoCell ()

@property (nonatomic, strong) UIImageView *coverImageView;
@property (nonatomic, strong) UIButton *likeButton;
@property (nonatomic, strong) UIButton *commentButton;
@property (nonatomic, strong) UIButton *shareButton;
@property (nonatomic, strong) UILabel *descriptionLabel;
@property (nonatomic, strong) UILabel *authorLabel;

@end

@implementation VideoCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame: frame];
    if (self) {
        [self setupUI];
    }
    
    return self;
}

- (void)setupUI {
    // 视频封面
    self.coverImageView = [[UIImageView alloc] init];
    self.coverImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.coverImageView.clipsToBounds = YES;
    [self.contentView addSubview:self.coverImageView];
    
    // 右侧操作按钮
    self.likeButton = [self createInteractionButton:@"icon_home_like_before" selectedImage:@"icon_home_like_after"];
    self.commentButton = [self createInteractionButton:@"icon_home_comment" selectedImage:nil];
    self.shareButton = [self createInteractionButton:@"icon_home_share" selectedImage:nil];
    
    // 底部文字信息
    self.descriptionLabel = [self createLabel:14 textColor:[UIColor whiteColor]];
    self.authorLabel = [self createLabel:16 textColor:[UIColor whiteColor]];
    
    [self setupConstraints];
}

- (void)setupConstraints {
    [self.coverImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.contentView);
    }];
    
    // 右侧按钮垂直布局
    [self.likeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView).offset(-10);
        make.bottom.equalTo(self.contentView.mas_centerY).offset(40);
        make.width.height.mas_equalTo(50);
    }];
    
    [self.commentButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.likeButton);
        make.top.equalTo(self.likeButton.mas_bottom).offset(20);
        make.width.height.equalTo(self.likeButton);
    }];
    
    [self.shareButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.likeButton);
        make.top.equalTo(self.commentButton.mas_bottom).offset(20);
        make.width.height.equalTo(self.likeButton);
    }];
    
    // 底部文字信息
    [self.authorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.contentView).offset(15);
        make.bottom.equalTo(self.contentView).offset(-60);
        make.right.lessThanOrEqualTo(self.likeButton.mas_left).offset(-10);
    }];
    
    [self.descriptionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.authorLabel);
        make.bottom.equalTo(self.authorLabel.mas_top).offset(-10);
        make.right.lessThanOrEqualTo(self.likeButton.mas_left).offset(-10);
    }];
}

- (UIButton *)createInteractionButton:(NSString *)imageName selectedImage:(nullable NSString *)selectedImageName {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    if (selectedImageName) {
        [button setImage:[UIImage imageNamed:selectedImageName] forState:UIControlStateSelected];
    }
    [self.contentView addSubview:button];
    return button;
}

- (UILabel *)createLabel:(CGFloat)fontSize textColor:(UIColor *)color {
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = color;
    label.numberOfLines = 2;
    [self.contentView addSubview:label];
    return label;
}

- (void)configureWithVideoModel:(id)videoModel {
    // TODO: 配置cell数据
}

@end
