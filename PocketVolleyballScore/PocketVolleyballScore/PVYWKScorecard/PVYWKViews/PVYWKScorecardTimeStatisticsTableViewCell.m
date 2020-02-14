//
//  PVYWKScorecardTimeStatisticsTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVYWKScorecardTimeStatisticsTableViewCell.h"
#import "PVYWKScorecardViewModel.h"

@interface PVYWKScorecardTimeStatisticsTableViewCell()
@property(nonatomic, strong)UILabel *PVYWKtitleLbl;
@end
@implementation PVYWKScorecardTimeStatisticsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVYWKtitleLbl];
        
        [self.PVYWKtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(60);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(PVYWKScorecardViewModel *)model{
    _model = model;
    if (_model.PVYWKtimeStatisticsDate) {
    NSString *timeStatisticsDateString = [PVYWKUIUtilities PVYWKformattedTimeStringWithDate:_model.PVYWKtimeStatisticsDate format:@"HH:mm:ss"];
    self.PVYWKtitleLbl.text = timeStatisticsDateString;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)PVYWKtitleLbl{
    if (!_PVYWKtitleLbl) {
        _PVYWKtitleLbl = [[UILabel alloc] init];
        _PVYWKtitleLbl.backgroundColor = [UIColor systemYellowColor];
        _PVYWKtitleLbl.textColor = [UIColor whiteColor];
        _PVYWKtitleLbl.font = [UIFont systemFontOfSize:40];
        _PVYWKtitleLbl.textAlignment = NSTextAlignmentCenter;
        _PVYWKtitleLbl.text = @"00:00:00";
    }
    return _PVYWKtitleLbl;
}
@end
