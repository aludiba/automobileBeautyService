//
//  BGCargoRecordSuperTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGCargoRecordSuperTableViewCell.h"
#import "BGCargoRecordTableViewCell.h"
#import "BGCargoModel.h"
#import "BGCargoAddViewModel.h"

@interface BGCargoRecordSuperTableViewCell()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *BGmainTable;//列表
@property(nonatomic, strong)NSMutableArray *BGviewDataArray;//页面数据
@end
@implementation BGCargoRecordSuperTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
    }
    return self;
}
- (void)setBGmodel:(BGCargoModel *)BGmodel{
    _BGmodel = BGmodel;
    [self.BGviewDataArray removeAllObjects];
    BGCargoAddViewModel *BGtimeViewModel = [[BGCargoAddViewModel alloc] init];
    BGtimeViewModel.BGTitle = NSLocalizedString(@"创建时间", nil);
    NSString *BGTimeString = [BGUIUtilities BGformattedTimeStringWithDate:_BGmodel.BGDate format:@"yyyy-MM-dd"];
    BGtimeViewModel.BGContent = BGTimeString;
    [self.BGviewDataArray addObject:BGtimeViewModel];
    
    BGCargoAddViewModel *BGPlaceViewModel = [[BGCargoAddViewModel alloc] init];
    BGPlaceViewModel.BGTitle = NSLocalizedString(@"地点", nil);
    BGPlaceViewModel.BGContent = _BGmodel.BGPlace;
    [self.BGviewDataArray addObject:BGPlaceViewModel];
    
    BGCargoAddViewModel *BGCustomerViewModel = [[BGCargoAddViewModel alloc] init];
    BGCustomerViewModel.BGTitle = NSLocalizedString(@"客户名称", nil);
    BGCustomerViewModel.BGContent = _BGmodel.BGCustomerName;
    [self.BGviewDataArray addObject:BGCustomerViewModel];
    
    BGCargoAddViewModel *BGCommodityViewModel = [[BGCargoAddViewModel alloc] init];
    BGCommodityViewModel.BGTitle = NSLocalizedString(@"货物名称", nil);
    BGCommodityViewModel.BGContent = _BGmodel.BGCommodityName;
    [self.BGviewDataArray addObject:BGCommodityViewModel];
    
    BGCargoAddViewModel *BGTransportPriceViewModel = [[BGCargoAddViewModel alloc] init];
    BGTransportPriceViewModel.BGTitle = NSLocalizedString(@"运输价格(元)", nil);
    BGTransportPriceViewModel.BGContent = [NSString stringWithFormat:@"%.2lf",_BGmodel.BGTransportPrice];
    [self.BGviewDataArray addObject:BGTransportPriceViewModel];
            
    BGCargoAddViewModel *BGlineViewModel = [[BGCargoAddViewModel alloc] init];
    BGlineViewModel.isLine = YES;
    [self.BGviewDataArray addObject:BGlineViewModel];
    
    [self.BGmainTable reloadData];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    BGCargoAddViewModel *BGModel = self.BGviewDataArray[indexPath.row];
    if (BGModel.isLine) {
        return 12;
    }else{
        return UITableViewAutomaticDimension;
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.BGviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    BGCargoAddViewModel *BGModel = self.BGviewDataArray[indexPath.row];
    if (BGModel.isLine) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor whiteColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        BGCargoRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"BGCargoRecordTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.BGviewModel = BGModel;
        return cell;
    }
}
- (NSMutableArray *)BGviewDataArray{
    if (!_BGviewDataArray) {
        _BGviewDataArray = [[NSMutableArray alloc] init];
    }
    return _BGviewDataArray;
}
- (UITableView *)BGmainTable{
    if (!_BGmainTable) {
        _BGmainTable = [[UITableView alloc] init];
        _BGmainTable.backgroundColor = [UIColor cyanColor];
        _BGmainTable.rowHeight = UITableViewAutomaticDimension;
        _BGmainTable.estimatedRowHeight = 48.0f;
        _BGmainTable.dataSource = self;
        _BGmainTable.delegate = self;
        _BGmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_BGmainTable registerClass:[BGCargoRecordTableViewCell class] forCellReuseIdentifier:@"BGCargoRecordTableViewCell"];
        [_BGmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        [self.contentView addSubview:_BGmainTable];
        [_BGmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return _BGmainTable;
}
@end
