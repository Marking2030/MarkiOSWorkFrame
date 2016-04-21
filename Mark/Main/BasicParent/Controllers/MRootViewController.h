//
//  MRootViewController.h
//  Mark
//
//  Created by 黄永强 on 16/4/19.
//  Copyright © 2016年 黄永强. All rights reserved.
//

#import "MParentViewController.h"

/** 带有TableView和CollectionView的根控制器 */
@interface MRootViewController : MParentViewController<UITableViewDataSource,UITableViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout,UICollectionViewDelegate>
{
    UITableView                 *_tableView;
    UICollectionView            *_collectionView;
    UICollectionViewFlowLayout  *_flowLayout;
}

/** 创建UITableView的方法 */
- (void)configTableViewWithFrame:(CGRect)frame;

/** 创建UITableView的方法 */
- (void)configTableViewWithFrame:(CGRect)frame
                           style:(UITableViewStyle)style;

/** 去除tableView的多余的分割线 */
- (void)setExtraCellLineHidden: (UITableView *)tableView;

/** 创建UICollectionView */
//设置横纵向最小间隔和滚动方向
-(void)configCollectionViewWithFrame:(CGRect)frame
                           LineSpace:(NSInteger)line
                              vSpace:(NSInteger)space
                    scrollDirecation:(UICollectionViewScrollDirection)direcation;
/** cell自动反选 仅适用于继承的_tableView 其他tableview请用  unselectCurrentRowOfTableView: */
- (void)unselectCurrentRow;
/** cell自动反选 */
- (void)unselectCurrentRowOfTableView:(UITableView *)tableView;

@end
