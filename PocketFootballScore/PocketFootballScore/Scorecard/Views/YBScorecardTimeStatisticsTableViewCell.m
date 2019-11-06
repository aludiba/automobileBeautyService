//
//  YBScorecardTimeStatisticsTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YBScorecardTimeStatisticsTableViewCell.h"
#import "YBScorecardViewModel.h"

@interface YBScorecardTimeStatisticsTableViewCell()
@property(nonatomic, strong)UILabel *YBtitleLbl;
@end
@implementation YBScorecardTimeStatisticsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.YBtitleLbl];
        
        [self.YBtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(60);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(YBScorecardViewModel *)model{
    _model = model;
    if (_model.YBtimeStatisticsDate) {
    NSString *timeStatisticsDateString = [YBUIUtilities YBformattedTimeStringWithDate:_model.YBtimeStatisticsDate format:@"HH:mm:ss"];
    self.YBtitleLbl.text = timeStatisticsDateString;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)YBtitleLbl{
    if (!_YBtitleLbl) {
        _YBtitleLbl = [[UILabel alloc] init];
        _YBtitleLbl.backgroundColor = [UIColor systemYellowColor];
        _YBtitleLbl.textColor = [UIColor whiteColor];
        _YBtitleLbl.font = [UIFont systemFontOfSize:40];
        _YBtitleLbl.textAlignment = NSTextAlignmentCenter;
        _YBtitleLbl.text = @"00:00:00";
    }
    return _YBtitleLbl;
}
@end
