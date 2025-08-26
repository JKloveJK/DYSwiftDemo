//
//  HomeViewController.m
//  DYSwiftDemo
//
//  Created by Jiankai Lei on 2025/8/26.
//

#import "HomeViewController.h"
#import <Masonry/Masonry.h>
#import "RecommendViewController.h"

// 定义常量
static NSString *const kCollectionViewCellID = @"VideoCell";
static CGFloat const kSliderBarHeight = 44.0f;
static CGFloat const kTopMargin = 25.0f;
static CGFloat const kSafeAreaTopHeight = 44.0f;
static CGFloat const kButtonWidth = 65.0f;

@interface HomeViewController () <UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UIScrollView *sliderBar;
@property (nonatomic, strong) UIView *sliderBarContentView;
@property (nonatomic, strong) NSArray<NSString *> *tabTitles;
@property (nonatomic, strong) UIView *sliderLine;
@property (nonatomic, strong) NSMutableArray<UIButton *> *tabButtons;
@property (nonatomic, assign) NSInteger currentTabIndex;
@property (nonatomic, strong) UIView *containerView;
@property (nonatomic, strong) RecommendViewController *recommendVC;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupData];
    [self setupUI];
    [self setupConstraints];
}

- (void)setupData {
    self.tabTitles = @[@"关注", @"精选", @"团购", @"朋友", @"推荐", @"关注", @"精选", @"团购", @"朋友"];
    self.tabButtons = [NSMutableArray array];
    self.currentTabIndex = 0;
}

- (void)setupUI {
    self.view.backgroundColor = [UIColor blackColor];
    
    self.containerView = [[UIView alloc] init];
    [self.view addSubview:self.containerView];
    
    [self setupSliderBar];
    [self setupChildViewControllers];
}

- (void)setupChildViewControllers {
    self.recommendVC = [[RecommendViewController alloc] init];
    [self addChildViewController:self.recommendVC];
    
    self.recommendVC.view.hidden = YES;
    [self.containerView addSubview:self.recommendVC.view];
    [self.recommendVC didMoveToParentViewController:self];
    
    [self.recommendVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.containerView);
    }];
}

- (void)setupSliderBar {
    self.sliderBar = [[UIScrollView alloc] init];
    self.sliderBar.showsHorizontalScrollIndicator = NO;
    self.sliderBar.bounces = YES;
    self.sliderBar.scrollEnabled = YES;
    self.sliderBar.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:self.sliderBar];
    
    // 创建内容视图
    self.sliderBarContentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kButtonWidth * self.tabTitles.count, kSliderBarHeight)];
    [self.sliderBar addSubview:self.sliderBarContentView];
    
    // 创建标签按钮
    CGFloat buttonWidth = kButtonWidth;
    CGFloat totalWidth = 0;
    
    for (NSInteger i = 0; i < self.tabTitles.count; i++) {
        UIButton *tabButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [tabButton setTitle:_tabTitles[i] forState:UIControlStateNormal];
        [tabButton setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
        [tabButton setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
        tabButton.titleLabel.font = [UIFont systemFontOfSize:16];
        tabButton.tag = i;
        [tabButton addTarget:self action:@selector(tabButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self.sliderBarContentView addSubview:tabButton];
        [self.tabButtons addObject:tabButton];
        
        [tabButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.sliderBarContentView).offset(totalWidth);
            make.top.bottom.equalTo(self.sliderBarContentView);
            make.width.mas_equalTo(buttonWidth);
            make.height.mas_equalTo(kSliderBarHeight);
            
            // 确保最后一个按钮约束正确
            if (i == self.tabTitles.count - 1) {
                make.right.equalTo(self.sliderBarContentView);
            }
        }];
        
        totalWidth += buttonWidth;
    }
    
    self.sliderLine = [[UIView alloc] init];
    self.sliderLine.backgroundColor = [UIColor whiteColor];
    [self.sliderBarContentView addSubview:self.sliderLine];
    
    self.tabButtons.firstObject.selected = YES;
    
    // 设置contentSize
    self.sliderBar.contentSize = CGSizeMake(totalWidth, kSliderBarHeight);
    
    
}

- (void)setupConstraints {
    // SliderBar约束
    [self.sliderBar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(kSafeAreaTopHeight);
        make.left.right.equalTo(self.view);
        make.height.mas_equalTo(kSliderBarHeight);
    }];
    
    // SliderBarContentView约束
    [self.sliderBarContentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.sliderBar);
        make.top.equalTo(self.sliderBar.mas_top);
    }];
    
    // 滑动指示器约束
    [self.sliderLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.sliderBarContentView);
        make.width.mas_equalTo(25);
        make.height.mas_equalTo(2);
        make.centerX.equalTo(self.tabButtons.firstObject);
    }];
    
    // 容器视图约束
    [self.containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.sliderBar.mas_bottom);
        make.left.right.bottom.equalTo(self.view);
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Actions

- (void)tabButtonClicked: (UIButton *)sender {
    [self switchToIndex:sender.tag];
}

- (void)switchToIndex:(NSInteger)index {
    if (index == self.currentTabIndex) return;
    
    // 更新按钮状态
    self.tabButtons[self.currentTabIndex].selected = NO;
    self.tabButtons[index].selected = YES;
    self.currentTabIndex = index;
    
    // 更新滑动指示器位置
    [UIView animateWithDuration:0.25 animations:^{
        [self.sliderLine mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.sliderBarContentView);
            make.width.mas_equalTo(25);
            make.height.mas_equalTo(2);
            make.centerX.equalTo(self.tabButtons[index]);
        }];
        [self.view layoutIfNeeded];
    }];
    
    // 处理子视图控制器的显示/隐藏
    [self updateChildViewControllers:index];
}

- (void)updateChildViewControllers:(NSInteger)index {
    // 判断是否是推荐页面（最后一个标签）
    BOOL isRecommendTab = [self.tabTitles[index]  isEqual: @"推荐"];
    self.recommendVC.view.hidden = !isRecommendTab;
}

#pragma mark -UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kCollectionViewCellID forIndexPath:indexPath];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return collectionView.bounds.size;
}

@end
