//
//  KACargoRecordSuperTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KACargoRecordSuperTableViewCell.h"
#import "KACargoRecordTableViewCell.h"
#import "KACargoModel.h"
#import "KACargoAddViewModel.h"

@interface KACargoRecordSuperTableViewCell()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *KAmainTable;//列表
@property(nonatomic, strong)NSMutableArray *KAviewDataArray;//页面数据
@end
@implementation KACargoRecordSuperTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
    }
    return self;
}
- (void)setKAmodel:(KACargoModel *)KAmodel{
    _KAmodel = KAmodel;
    KACargoAddViewModel *KAtimeViewModel = [[KACargoAddViewModel alloc] init];
    KAtimeViewModel.KATitle = @"创建时间";
    NSString *KATimeString = [KAUIUtilities KAformattedTimeStringWithDate:_KAmodel.KADate format:@"yyyy年MM月dd日"];
    KAtimeViewModel.KAContent = KATimeString;
    [self.KAviewDataArray addObject:KAtimeViewModel];
    
    KACargoAddViewModel *KAPlaceViewModel = [[KACargoAddViewModel alloc] init];
    KAPlaceViewModel.KATitle = @"地点";
    KAPlaceViewModel.KAContent = _KAmodel.KAPlace;
    [self.KAviewDataArray addObject:KAPlaceViewModel];
    
    KACargoAddViewModel *KACustomerViewModel = [[KACargoAddViewModel alloc] init];
    KACustomerViewModel.KATitle = @"客户名称";
    KACustomerViewModel.KAContent = _KAmodel.KACustomerName;
    [self.KAviewDataArray addObject:KACustomerViewModel];
    
    KACargoAddViewModel *KACommodityViewModel = [[KACargoAddViewModel alloc] init];
    KACommodityViewModel.KATitle = @"货物名称";
    KACommodityViewModel.KAContent = _KAmodel.KACommodityName;
    [self.KAviewDataArray addObject:KACommodityViewModel];
    
    KACargoAddViewModel *KATransportPriceViewModel = [[KACargoAddViewModel alloc] init];
    KATransportPriceViewModel.KATitle = @"运输价格(元)";
    KATransportPriceViewModel.KAContent = [NSString stringWithFormat:@"%.2lf",_KAmodel.KATransportPrice];
    [self.KAviewDataArray addObject:KATransportPriceViewModel];
            
    KACargoAddViewModel *KAlineViewModel = [[KACargoAddViewModel alloc] init];
    KAlineViewModel.isLine = YES;
    [self.KAviewDataArray addObject:KAlineViewModel];
    
    [self.KAmainTable reloadData];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    KACargoAddViewModel *KAModel = self.KAviewDataArray[indexPath.row];
    if (KAModel.isLine) {
        return 12;
    }else{
        return UITableViewAutomaticDimension;
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.KAviewDataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    KACargoAddViewModel *KAModel = self.KAviewDataArray[indexPath.row];
    if (KAModel.isLine) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        cell.backgroundColor = KAH_Color(242, 242, 242, 1);
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        KACargoRecordTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"KACargoRecordTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.KAviewModel = KAModel;
        return cell;
    }
}
- (NSMutableArray *)KAviewDataArray{
    if (!_KAviewDataArray) {
        _KAviewDataArray = [[NSMutableArray alloc] init];
    }
    return _KAviewDataArray;
}
- (UITableView *)KAmainTable{
    if (!_KAmainTable) {
        _KAmainTable = [[UITableView alloc] init];
        _KAmainTable.backgroundColor = KAH_Color(242, 242, 242, 1);
        _KAmainTable.rowHeight = UITableViewAutomaticDimension;
        _KAmainTable.estimatedRowHeight = 48.0f;
        _KAmainTable.dataSource = self;
        _KAmainTable.delegate = self;
        _KAmainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_KAmainTable registerClass:[KACargoRecordTableViewCell class] forCellReuseIdentifier:@"KACargoRecordTableViewCell"];
        [_KAmainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        [self.contentView addSubview:_KAmainTable];
        [_KAmainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return _KAmainTable;
}
@end
