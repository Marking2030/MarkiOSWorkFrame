//
//  MTabBarViewController.m
//  Mark
//
//  Created by 黄永强 on 16/4/19.
//  Copyright © 2016年 黄永强. All rights reserved.
//

#import "MTabBarViewController.h"

@interface MTabBarViewController ()

@end

@implementation MTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setSubControllers];
}

#pragma mark - 设置控制器
/**
 *  设置控制器
 */
- (void)setSubControllers
{
    //必备
    MNecessaryViewController *necessaryVC = [[MNecessaryViewController alloc] init];
    [self setupChildViewController:necessaryVC title:HYQCulture(@"必备") imageName:@"notice_gray" selectedImageName:@"notice_experts"];
    
    //推荐
    MRecommendViewController *recommendVC = [[MRecommendViewController alloc] init];
    [self setupChildViewController:recommendVC title:HYQCulture(@"推荐") imageName:@"single_center_gray" selectedImageName:@"single_center"];
    
    //发现
    MFindViewController *findVC = [[MFindViewController alloc] init];
    [self setupChildViewController:findVC title:HYQCulture(@"发现") imageName:@"found_gray" selectedImageName:@"found_experts"];
    
    //我的空间
    MMyZoneViewController *myZoneVC = [[MMyZoneViewController alloc] init];
    [self setupChildViewController:myZoneVC title:HYQCulture(@"我的空间") imageName:@"my_gray" selectedImageName:@"my_experts"];
}

/**
 *  初始化一个子控制器
 *
 *  @param childVc           需要初始化的子控制器
 *  @param title             标题
 *  @param imageName         图标
 *  @param selectedImageName 选中的图标
 */
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName
{
    // 1.设置控制器的属性
    childVc.title = title;
    // 设置图标
    childVc.tabBarItem.image = [UIImage imageNamed:imageName];
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    [[UITabBar appearance] setTintColor:kMBlueColor];
    childVc.tabBarItem.selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 2.包装一个导航控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:childVc];
    [self addChildViewController:nav];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
