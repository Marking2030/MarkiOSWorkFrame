//
//  MNecessaryViewController.m
//  Mark
//
//  Created by 黄永强 on 16/4/19.
//  Copyright © 2016年 黄永强. All rights reserved.
//

#import "MNecessaryViewController.h"

@interface MNecessaryViewController ()
{
    NSArray *_dataArray;
}
@end

@implementation MNecessaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *titleText = [[UILabel alloc] initWithFrame: CGRectMake(0, 0, 320, 44)];
    
    titleText.backgroundColor = [UIColor clearColor];
    titleText.textColor=[UIColor blackColor];
    titleText.textAlignment = NSTextAlignmentCenter;
    [titleText setFont:[UIFont systemFontOfSize:17.0]];
    [titleText setText:@"必备控件"];
    self.navigationItem.titleView=titleText;
    [self creatInterface];
}

#pragma mark - 创建界面
- (void)creatInterface
{
    _dataArray = @[HYQCulture(@"登录"), HYQCulture(@"网络"), HYQCulture(@"指示器"), HYQCulture(@"下拉刷新，上拉加载"), HYQCulture(@"社交分享"), HYQCulture(@"用户反馈"), HYQCulture(@"倒计时"), HYQCulture(@"键盘"), HYQCulture(@"数据持久化"), HYQCulture(@"输入框"), HYQCulture(@"相机,相册获取图片"), HYQCulture(@"引导页（欢迎页面）"), HYQCulture(@"图片浏览"), HYQCulture(@"视图布局"), HYQCulture(@"定位"), HYQCulture(@"访问通讯录"), HYQCulture(@"地图"), HYQCulture(@"正则表达验证"), HYQCulture(@"通知+推送"), HYQCulture(@"清除缓存"), HYQCulture(@"给产品app评分"), HYQCulture(@"拨打电话"), HYQCulture(@"关于我们")];
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kWidth, kHeight) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellId = @"NecessaryCellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.textLabel.text = _dataArray[indexPath.row];
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
