//
//  MPSetViewController.m
//  magicPicsew
//
//  Created by 123 on 2020/10/30.
//

#import "MPSetViewController.h"
#import "MPSetHeaderView.h"
#import "MPSetTableViewCell.h"
#import "MPSetModel.h"

@interface MPSetViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *MPtableView;

@property (nonatomic, strong) NSMutableArray *MParray;


@end

@implementation MPSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"设置";
    [self MPsetContentView];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];

}
#pragma mark - actions
- (void)MPsetContentView{
    NSMutableArray *MParray = [[NSMutableArray alloc] init];
    NSMutableArray *MParray1 = [[NSMutableArray alloc] init];
    [self.MParray addObject:MParray];
    [self.MParray addObject:MParray1];
    
    MPSetModel *MPsaveModel = [[MPSetModel alloc] init];
    MPsaveModel.MPtitle = @"保存";
    MPsaveModel.MPimgName = @"MP_baocun";
    [MParray addObject:MPsaveModel];
    
    MPSetModel *MPwatermarkModel = [[MPSetModel alloc] init];
    MPwatermarkModel.MPtitle = @"水印";
    MPwatermarkModel.MPimgName = @"MP_shuiyin";
    [MParray addObject:MPwatermarkModel];

    MPSetModel *MPidentifyModel = [[MPSetModel alloc] init];
    MPidentifyModel.MPtitle = @"智能识别";
    MPidentifyModel.MPimgName = @"MP_shibie";
    [MParray addObject:MPidentifyModel];
    
    MPSetModel *MPscoreModel = [[MPSetModel alloc] init];
    MPscoreModel.MPtitle = @"去App Store评分";
    MPscoreModel.MPimgName = @"MP_pingfen";
    [MParray1 addObject:MPscoreModel];
    
    MPSetModel *MPrecommendfriendsModel = [[MPSetModel alloc] init];
    MPrecommendfriendsModel.MPtitle = @"推荐给好友";
    MPrecommendfriendsModel.MPimgName = @"MP_fenxiang";
    [MParray1 addObject:MPrecommendfriendsModel];
    
    [self.MPtableView reloadData];
}
#pragma mark - TableView代理方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.MParray.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSMutableArray *array = self.MParray[section];
    return array.count;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    MPSetHeaderView *MPheaderView = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"MPSetHeaderView"];
    if (section == 0) {
        MPheaderView.MPtitleLbl.text = @"偏好";
    }else{
        MPheaderView.MPtitleLbl.text = @"其它";
    }
    return MPheaderView;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSMutableArray *MParray;
    if (indexPath.section == 0) {
        MParray = self.MParray[0];
    }else{
        MParray = self.MParray[1];
    }
    MPSetModel *MPmodel = MParray[indexPath.row];
    MPSetTableViewCell *MPcell = [tableView dequeueReusableCellWithIdentifier:@"MPSetTableViewCell" forIndexPath:indexPath];
    MPcell.MPmodel = MPmodel;
    MPcell.selectionStyle = UITableViewCellSelectionStyleNone;
    return  MPcell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
#pragma mark - 属性懒加载
- (UITableView *)MPtableView{
    if (!_MPtableView) {
        _MPtableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        [self.view addSubview:_MPtableView];
        _MPtableView.rowHeight = UITableViewAutomaticDimension;
        _MPtableView.sectionHeaderHeight = UITableViewAutomaticDimension;
        _MPtableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _MPtableView.delegate = self;
        _MPtableView.dataSource = self;
        [_MPtableView registerClass:[MPSetHeaderView class] forHeaderFooterViewReuseIdentifier:@"MPSetHeaderView"];
        [_MPtableView registerClass:[MPSetTableViewCell class] forCellReuseIdentifier:@"MPSetTableViewCell"];
    }
    return _MPtableView;
}
- (NSMutableArray *)MParray{
    if (!_MParray) {
        _MParray = [[NSMutableArray alloc] init];
    }
    return _MParray;
}
@end
