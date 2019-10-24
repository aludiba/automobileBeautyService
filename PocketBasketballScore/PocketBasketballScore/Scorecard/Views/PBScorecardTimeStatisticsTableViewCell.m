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
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLbl];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(60);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(PBScorecardViewModel *)model{
    _model = model;
    if (_model.timeStatisticsDate) {
    NSString *timeStatisticsDateString = [PBUIUtilities PBformattedTimeStringWithDate:_model.timeStatisticsDate format:@"HH:mm:ss"];
    self.titleLbl.text = timeStatisticsDateString;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.backgroundColor = [UIColor systemYellowColor];
        _titleLbl.textColor = [UIColor whiteColor];
        _titleLbl.font = [UIFont systemFontOfSize:40];
        _titleLbl.textAlignment = NSTextAlignmentCenter;
        _titleLbl.text = @"00:00:00";
    }
    return _titleLbl;
}
@end
