//
//  ALCargoRecordSuperTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALCargoRecordSuperTableViewCell.h"
#import "ALCargoRecordTableViewCell.h"
#import "ALCargoModel.h"
#import "ALCargoAddViewModel.h"

@interface ALCargoRecordSuperTableViewCell()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *ALmainTable;//列表
@property(nonatomic, strong)NSMutableArray *ALviewDataArray;//页面数据
@end
@implementation ALCargoRecordSuperTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}
- (void)setALmodel:(ALCargoModel *)ALmodel{
    _ALmodel = ALmodel;
    ALCargoAddViewModel *ALtimeViewModel = [[ALCargoAddViewModel alloc] init];
    ALtimeViewModel.ALTitle = @"创建时间";
    NSString *ALTimeString = [ALUIUtilities ALformattedTimeStringWithDate:_ALmodel.ALDate format:@"yyyy年MM月dd日"];
    ALtimeViewModel.ALContent = ALTimeString;
    [self.ALviewDataArray addObject:ALtimeViewModel];
    
    ALCargoAddViewModel *ALPlaceViewModel = [[ALCargoAddViewModel alloc] init];
    ALPlaceViewModel.ALTitle = @"地点";
    ALPlaceViewModel.ALContent = _ALmodel.ALPlace;
    [self.ALviewDataArray addObject:ALPlaceViewModel];
    
    ALCargoAddViewModel *ALCustomerViewModel = [[ALCargoAddViewModel alloc] init];
    ALCustomerViewModel.ALTitle = @"客户名称";
    ALCustomerViewModel.ALContent = _ALmodel.ALCustomerName;
    [self.ALviewDataArray addObject:ALCustomerViewModel];
    
    ALCargoAddViewModel *ALCommodityViewModel = [[ALCargoAddViewModel alloc] init];
    ALCommodityViewModel.ALTitle = @"货物名称";
    ALCommodityViewModel.ALContent = _ALmodel.ALCommodityName;
    [self.ALviewDataArray addObject:ALCommodityViewModel];
    
    ALCargoAddViewModel *ALTransportPriceViewModel = [[ALCargoAddViewModel alloc] init];
    ALTransportPriceViewModel.ALTitle = @"运输价格(元)";
    ALTransportPriceViewModel.ALContent = [NSString stringWithFormat:@"%.2lf",_ALmodel.ALTransportPrice];
    [self.ALviewDataArray addObject:ALTransportPriceViewModel];
            
    ALCargoAddViewModel *ALlineViewModel = [[ALCargoAddViewModel alloc] init];
    ALlineViewModel.isLine = YES;
    [self.ALviewDataArray addObject:ALlineViewModel];
    
    [self.ALmainTable reloadData];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    ALCargoAddViewModel *ALModel = self.ALviewDataArray[indexPath.row];
    if (ALModel.isLine) {
        return 12;
    }else{
        return UITableViewAutomaticDimension;
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ALviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ALCargoAddViewModel *ALModel = self.ALviewDataArray[indexPath.row];
    if (ALModel.isLine) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        cell.backgroundColor = ALH_Color(242, 242, 242, 1);
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        ALCargoRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ALCargoRecordTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.ALviewModel = ALModel;
        return cell;
    }
}
- (NSMutableArray *)ALviewDataArray{
    if (!_ALviewDataArray) {
        _ALviewDataArray = [[NSMutableArray alloc] init];
    }
    return _ALviewDataArray;
}
- (UITableView *)ALmainTable{
    if (!_ALmainTable) {
        _ALmainTable = [[UITableView alloc] init];
        _ALmainTable.backgroundColor = ALH_Color(242, 242, 242, 1);
        _ALmainTable.rowHeight = UITableViewAutomaticDimension;
        _ALmainTable.estimatedRowHeight = 48.0f;
        _ALmainTable.dataSource = self;
        _ALmainTable.delegate = self;
        _ALmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_ALmainTable registerClass:[ALCargoRecordTableViewCell class] forCellReuseIdentifier:@"ALCargoRecordTableViewCell"];
        [_ALmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        [self.contentView addSubview:_ALmainTable];
        [_ALmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return _ALmainTable;
}
@end
