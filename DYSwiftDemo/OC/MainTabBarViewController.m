//
//  MainTabBarViewController.m
//  DYSwiftDemo
//
//  Created by Jiankai Lei on 2025/8/26.
//

#import "MainTabBarViewController.h"
#import "Home/HomeViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupTabBarItems];
    
    self.tabBar.backgroundColor = [UIColor blackColor];
    self.tabBar.tintColor = [UIColor whiteColor];
    self.tabBar.unselectedItemTintColor = [UIColor lightGrayColor];
}

- (void)setupTabBarItems {
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    UIViewController *shopVC = [[UIViewController alloc] init];
    UIViewController *createVC = [[UIViewController alloc] init];
    UIViewController *messageVC = [[UIViewController alloc] init];
    UIViewController *profileVC = [[UIViewController alloc] init];
    
    // 设置每个VC的标题和背景色（临时，方便查看效果）
    homeVC.view.backgroundColor = [UIColor whiteColor];
    shopVC.view.backgroundColor = [UIColor whiteColor];
    createVC.view.backgroundColor = [UIColor whiteColor];
    messageVC.view.backgroundColor = [UIColor whiteColor];
    profileVC.view.backgroundColor = [UIColor whiteColor];
    
    // 将VC包装在NavigationController中
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    UINavigationController *shopNav = [[UINavigationController alloc] initWithRootViewController:shopVC];
    UINavigationController *createNav = [[UINavigationController alloc] initWithRootViewController:createVC];
    UINavigationController *messageNav = [[UINavigationController alloc] initWithRootViewController:messageVC];
    UINavigationController *profileNav = [[UINavigationController alloc] initWithRootViewController:profileVC];
    
    // 设置TabBarItem
    homeNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:nil selectedImage:nil];
    shopNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"商城" image:nil selectedImage:nil];
    createNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"创建" image:nil selectedImage:nil];
    messageNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"消息" image:nil selectedImage:nil];
    profileNav.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我" image:nil selectedImage:nil];
    
    [homeNav setNavigationBarHidden:YES];
    
    // 调整文字样式：居中、增大字体
    NSDictionary *normalAttributes = @{
        NSFontAttributeName: [UIFont systemFontOfSize:16 weight:UIFontWeightMedium], // 增大字体
        NSForegroundColorAttributeName: [UIColor darkGrayColor] // 普通状态颜色
    };
    
    NSDictionary *selectedAttributes = @{
        NSFontAttributeName: [UIFont systemFontOfSize:16 weight:UIFontWeightMedium], // 选中状态同样使用大字体
        NSForegroundColorAttributeName: [UIColor whiteColor] // 选中状态颜色
    };
    
    // 应用文字样式到所有tabBarItem
    [homeNav.tabBarItem setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];
    [homeNav.tabBarItem setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];
    
    [shopNav.tabBarItem setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];
    [shopNav.tabBarItem setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];
    
    [createNav.tabBarItem setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];
    [createNav.tabBarItem setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];
    
    [messageNav.tabBarItem setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];
    [messageNav.tabBarItem setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];
    
    [profileNav.tabBarItem setTitleTextAttributes:normalAttributes forState:UIControlStateNormal];
    [profileNav.tabBarItem setTitleTextAttributes:selectedAttributes forState:UIControlStateSelected];
    
    // 设置ViewControllers数组
    self.viewControllers = @[homeNav, shopNav, createNav, messageNav, profileNav];
    self.view.backgroundColor = [UIColor blackColor];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */
 
@end
