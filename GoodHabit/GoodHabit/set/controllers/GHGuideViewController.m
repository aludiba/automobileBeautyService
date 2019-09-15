//
//  GHGuideViewController.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHGuideViewController.h"
#import "GHGuidePromptView.h"
#import "GHGuideCollectionReusableView.h"
#import "GHGuideModel.h"
@interface GHGuideViewController ()<UICollectionViewDelegateFlowLayout,UICollectionViewDelegate,UICollectionViewDataSource>
@property(nonatomic, strong)NSMutableArray *selectArray;
@property(nonatomic, strong)NSMutableArray *dataArray;
@property(nonatomic, strong)GHGuidePromptView *promptView;
@property(nonatomic, strong)UICollectionView *collectionView;
@property(nonatomic, copy)NSString *objectId;
@end

@implementation GHGuideViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setContentView];
}
- (void)setContentView{
    [self.view addSubview:self.promptView];
    [self.promptView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(30);
        make.top.equalTo(self.view).offset(GHHeightNavBar * 0.5);
        make.trailing.equalTo(self.view).offset(-30);
        make.height.mas_equalTo(40);
    }];
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setObject:NSLocalizedString(@"起床", nil) forKey:@"sectionTitle"];
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    [dic setObject:dataArray forKey:@"data"];
    GHGuideModel *brushTeethModel = [[GHGuideModel alloc] init];
    brushTeethModel.periodCode = 000;
    brushTeethModel.periodTimeString = NSLocalizedString(@"起床", nil);
    brushTeethModel.imageContent = @"GHBrushTeeth";
    brushTeethModel.contentCode = 0000;
    brushTeethModel.content = NSLocalizedString(@"刷牙", nil);
    [dataArray addObject:brushTeethModel];
    
    GHGuideModel *drinkWaterModel = [[GHGuideModel alloc] init];
    drinkWaterModel.periodCode = 000;
    drinkWaterModel.periodTimeString = NSLocalizedString(@"起床", nil);
    drinkWaterModel.imageContent = @"GHDrinkWater";
    drinkWaterModel.contentCode = 0001;
    drinkWaterModel.content = NSLocalizedString(@"喝杯水", nil);
    [dataArray addObject:drinkWaterModel];
    
    GHGuideModel *foldQuiltModel = [[GHGuideModel alloc] init];
    foldQuiltModel.periodCode = 000;
    foldQuiltModel.periodTimeString = NSLocalizedString(@"起床", nil);
    foldQuiltModel.imageContent = @"GHFoldQuilt";
    foldQuiltModel.contentCode = 0002;
    foldQuiltModel.content = NSLocalizedString(@"叠被子", nil);
    [dataArray addObject:foldQuiltModel];
    [self.dataArray addObject:dic];
}
#pragma mark - 属性懒加载
- (NSMutableArray *)selectArray{
    if (!_selectArray) {
        _selectArray = [[NSMutableArray alloc] init];
    }
    return _selectArray;
}
- (NSMutableArray *)dataArray{
    if (!_dataArray) {
        _dataArray = [[NSMutableArray alloc] init];
    }
    return _dataArray;
}
- (GHGuidePromptView *)promptView{
    if (!_promptView) {
        _promptView = [[GHGuidePromptView alloc] init];
        _promptView.titleLabel.text = NSLocalizedString(@"请先挑选3个习惯来开始", nil);
        _promptView.numberLabel.text = @"0";
    }
    return _promptView;
}
- (UICollectionView *)collectionView{
    if (!_collectionView) {
        // 创建FlowLayout
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        // 垂直方向滑动
        flowLayout.scrollDirection = UICollectionViewScrollDirectionVertical;
        // 创建collectionView
        CGRect frame = CGRectMake(0, GHHeightNavBar, GHWIDTH, GHHEIGHT);
        _collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:flowLayout];
        // 设置代理
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        // 其他属性
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;// 隐藏垂直方向滚动条
        [_collectionView registerClass:[GHGuideCollectionReusableView class] forCellWithReuseIdentifier:@"GHGuideCollectionReusableView"];
        [self.view addSubview:_collectionView];
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.mas_topLayoutGuideBottom).offset(10);
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.bottom.equalTo(self.view);
        }];
    }
    return _collectionView;
}
@end
