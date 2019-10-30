//
//  PVScorecardTimeStatisticsTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PVScorecardTimeStatisticsTableViewCell.h"
#import "PVScorecardViewModel.h"

@interface PVScorecardTimeStatisticsTableViewCell()
@property(nonatomic, strong)UILabel *PVtitleLbl;
@end
@implementation PVScorecardTimeStatisticsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVtitleLbl];
        
        [self.PVtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(60);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(PVScorecardViewModel *)model{
    _model = model;
    if (_model.PVtimeStatisticsDate) {
    NSString *timeStatisticsDateString = [PVUIUtilities PVformattedTimeStringWithDate:_model.PVtimeStatisticsDate format:@"HH:mm:ss"];
    self.PVtitleLbl.text = timeStatisticsDateString;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)PVtitleLbl{
    if (!_PVtitleLbl) {
        _PVtitleLbl = [[UILabel alloc] init];
        _PVtitleLbl.backgroundColor = [UIColor systemYellowColor];
        _PVtitleLbl.textColor = [UIColor whiteColor];
        _PVtitleLbl.font = [UIFont systemFontOfSize:40];
        _PVtitleLbl.textAlignment = NSTextAlignmentCenter;
        _PVtitleLbl.text = @"00:00:00";
    }
    return _PVtitleLbl;
}
@end
