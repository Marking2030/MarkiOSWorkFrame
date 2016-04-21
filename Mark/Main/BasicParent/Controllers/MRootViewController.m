//
//  MRootViewController.m
//  Mark
//
//  Created by 黄永强 on 16/4/19.
//  Copyright © 2016年 黄永强. All rights reserved.
//

#import "MRootViewController.h"

@interface MRootViewController ()

@end

@implementation MRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - 创建UITableView的方法
- (void)configTableViewWithFrame:(CGRect)frame
{
    if([HYQDeviceManager currentVersion] >=7.0){
        //ios7.0之后出现的属性
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    //初始化  frame子类可以重新赋值
    _tableView = [[UITableView alloc]initWithFrame:frame style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    [self setExtraCellLineHidden:_tableView];
}

#pragma mark - 创建UITableView的方法
- (void)configTableViewWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    //    if([QWDeviceManager currentVersion] >=7.0){
    //        //ios7.0之后出现的属性
    //        self.automaticallyAdjustsScrollViewInsets = NO;
    //    }
    //初始化  frame子类可以重新赋值
    _tableView = [[UITableView alloc]initWithFrame:frame style:style];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    [self setExtraCellLineHidden:_tableView];
}

#pragma mark - 创建UICollectionView
-(void)configCollectionViewWithFrame:(CGRect)frame
                           LineSpace:(NSInteger)line
                              vSpace:(NSInteger)space
                    scrollDirecation:(UICollectionViewScrollDirection)direcation
{
    if([HYQDeviceManager currentVersion] >= 7.0){
        //ios7.0 之后出现的属性
        self.automaticallyAdjustsScrollViewInsets = NO;
    }
    //UICollectionViewFlowLayout 是系统提供的能够实现cell的网格布局
    _flowLayout = [[UICollectionViewFlowLayout alloc]init];
    _flowLayout.minimumInteritemSpacing = space;
    _flowLayout.minimumLineSpacing = line;
    [_flowLayout setScrollDirection:direcation];
    
    //利用布局对象 实现集合视图的初始化 frame子类可以重新赋值
    _collectionView = [[UICollectionView alloc]initWithFrame:frame collectionViewLayout:_flowLayout];
    _collectionView.delegate = self;
    _collectionView.dataSource = self;
    _collectionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_collectionView];
}

#pragma mark - 去除tableView的多余的分割线
- (void)setExtraCellLineHidden: (UITableView *)tableView{
    UIView *view =[ [UIView alloc]init];
    view.backgroundColor = [UIColor clearColor];
    [tableView setTableFooterView:view];
    [tableView setTableHeaderView:view];
}

#pragma mark - UITableView DataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"子类使用TableView必须重写此方法");
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"子类使用TableView必须重写此方法");
    return nil;
}

#pragma mark - UICollectionViewDataSource
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    NSLog(@"子类必须重写此方法");
    return 0;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"子类必须重写此方法");
    return nil;
}

/** cell自动反选 */
- (void)unselectCurrentRow
{
    [_tableView deselectRowAtIndexPath:[_tableView indexPathForSelectedRow] animated:YES];
}

/** cell自动反选 */
- (void)unselectCurrentRowOfTableView:(UITableView *)tableView
{
    [tableView deselectRowAtIndexPath:[tableView indexPathForSelectedRow] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
