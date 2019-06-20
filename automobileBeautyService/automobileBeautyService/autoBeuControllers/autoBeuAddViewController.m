//
//  autoBeuAddViewController.m
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "autoBeuAddViewController.h"
#import "autoBeuDataModel.h"
#import "autoBeuPaintModel.h"
#import "autoBeuInteriorModel.h"
#import "autoBeuNacelleModel.h"
#import "autoBeuGlassModel.h"
#import "autoBeuTiresAndHubsModel.h"
#import "autoBeuHeadlightModel.h"
@interface autoBeuAddViewController()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *autoBeumainTable;
@property(nonatomic, strong)NSMutableArray *autoBeuviewDataArray;
@property(nonatomic, strong)UIButton *autoBeueditButton;
@property(nonatomic, strong)UIButton *autoBeusaveButton;
@end
@implementation autoBeuAddViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    CGFloat aRedValue = arc4random() % 255;
    CGFloat aGreenValue = arc4random() % 255;
    CGFloat aBlueValue = arc4random() % 255;
    self.view.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
    if (self.currentType == autoBeuAddViewControllerTypeAdd) {
        self.title = @"Add";
    }else if (self.currentType == autoBeuAddViewControllerTypeDetail){
        self.title = @"Detail";
    }
    [self autoBeuSetContent];
}
- (void)autoBeu_setupNavigationItems{
    [super autoBeu_setupNavigationItems];
    if (self.currentType == autoBeuAddViewControllerTypeDetail) {
        UIBarButtonItem *rightbaritem = [[UIBarButtonItem alloc] initWithCustomView:self.autoBeueditButton];
        self.navigationItem.rightBarButtonItem = rightbaritem;
    }
}
- (void)autoBeuSetContent{
    
}
#pragma mark - 添加或保存
- (void)autoBeusave{
    
}
#pragma mark - 再次编辑
- (void)autoBeueditor{
    
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
- (void)autoBeucloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate

#pragma mark - 属性懒加载
- (autoBeuDataModel *)model{
    if (!_model) {
        _model = [[autoBeuDataModel alloc] init];
        _model.autoBeuPaint = [[autoBeuPaintModel alloc] init];
        _model.autoBeuInterior = [[autoBeuInteriorModel alloc] init];
        _model.autoBeuNacelle = [[autoBeuNacelleModel alloc] init];
        _model.autoBeuGlass = [[autoBeuGlassModel alloc] init];
        _model.autoBeuTiresAndHubs = [[autoBeuTiresAndHubsModel alloc] init];
        _model.autoBeuHeadlight = [[autoBeuHeadlightModel alloc] init];
    }
    return _model;
}
- (UITableView *)autoBeumainTable{
    if (!_autoBeumainTable) {
        _autoBeumainTable = [[UITableView alloc] init];
        _autoBeumainTable.rowHeight = UITableViewAutomaticDimension;
        _autoBeumainTable.estimatedRowHeight = 55.0f;
        _autoBeumainTable.dataSource = self;
        _autoBeumainTable.delegate = self;
        _autoBeumainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_autoBeumainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(autoBeucloseKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_autoBeumainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(autoBeucloseKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.autoBeusaveButton];
        [self.autoBeusaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(16);
            make.trailing.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-30);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_autoBeumainTable];
        [_autoBeumainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-104);
        }];
    }
    return _autoBeumainTable;
}
- (UIButton *)autoBeusaveButton{
    if (!_autoBeusaveButton) {
        _autoBeusaveButton = [[UIButton alloc] init];
        _autoBeusaveButton.backgroundColor = [UIColor redColor];
        _autoBeusaveButton.layer.cornerRadius = 2;
        _autoBeusaveButton.layer.masksToBounds = YES;
        _autoBeusaveButton.layer.borderColor = auto4sH_Color(100, 141, 225, 1).CGColor;
        _autoBeusaveButton.layer.borderWidth = 0.5f;
        [_autoBeusaveButton setTitle:@"COMPLETE" forState:UIControlStateNormal];
        [_autoBeusaveButton addTarget:self action:@selector(autoBeusave) forControlEvents:UIControlEventTouchUpInside];
        [_autoBeusaveButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_autoBeusaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _autoBeusaveButton;
}
- (UIButton *)autoBeueditButton{
    if (!_autoBeueditButton) {
        _autoBeueditButton = [[UIButton alloc] init];
        [_autoBeueditButton setTitle:@"Editor" forState:UIControlStateNormal];
        [_autoBeueditButton setTitleColor:[UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_autoBeueditButton.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:17]];
        [_autoBeueditButton addTarget:self action:@selector(autoBeueditor) forControlEvents:UIControlEventTouchUpInside];
        [_autoBeueditButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(22);
        }];
    }
    return _autoBeueditButton;
}
- (NSMutableArray *)autoBeuviewDataArray{
    if (!_autoBeuviewDataArray) {
        _autoBeuviewDataArray = [[NSMutableArray alloc] init];
    }
    return _autoBeuviewDataArray;
}
@end
