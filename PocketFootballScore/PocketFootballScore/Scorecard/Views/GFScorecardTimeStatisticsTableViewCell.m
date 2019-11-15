//
//  GFScorecardTimeStatisticsTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GFScorecardTimeStatisticsTableViewCell.h"
#import "GFScorecardViewModel.h"

@interface GFScorecardTimeStatisticsTableViewCell()
@property(nonatomic, strong)UILabel *GFtitleLbl;
@end
@implementation GFScorecardTimeStatisticsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.GFtitleLbl];
        
        [self.GFtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(60);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(GFScorecardViewModel *)model{
    _model = model;
    if (_model.GFtimeStatisticsDate) {
    NSString *timeStatisticsDateString = [GFUIUtilities GFformattedTimeStringWithDate:_model.GFtimeStatisticsDate format:@"HH:mm:ss"];
    self.GFtitleLbl.text = timeStatisticsDateString;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)GFtitleLbl{
    if (!_GFtitleLbl) {
        _GFtitleLbl = [[UILabel alloc] init];
        _GFtitleLbl.backgroundColor = [UIColor systemYellowColor];
        _GFtitleLbl.textColor = [UIColor whiteColor];
        _GFtitleLbl.font = [UIFont systemFontOfSize:40];
        _GFtitleLbl.textAlignment = NSTextAlignmentCenter;
        _GFtitleLbl.text = @"00:00:00";
    }
    return _GFtitleLbl;
}
@end
