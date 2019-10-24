//
//  PBScorecardTimeStatisticsTableViewCell.m
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBScorecardTimeStatisticsTableViewCell.h"
#import "PBScorecardViewModel.h"

@interface PBScorecardTimeStatisticsTableViewCell()
@property(nonatomic, strong)UILabel *titleLbl;
@end
@implementation PBScorecardTimeStatisticsTableViewCell
- (void)setModel:(PBScorecardViewModel *)model{
    _model = model;
    NSString *timeStatisticsDateString = [PBUIUtilities PBformattedTimeStringWithDate:_model.timeStatisticsDate format:@""];
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.backgroundColor = [UIColor orangeColor];
        _titleLbl.textColor = [UIColor whiteColor];
        _titleLbl.font = [UIFont systemFontOfSize:20];
    }
    return _titleLbl;
}
@end
