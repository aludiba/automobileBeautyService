//
//  PFScorecardTimeStatisticsTableViewCell.m
//  PocketFootballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PFScorecardTimeStatisticsTableViewCell.h"
#import "PFScorecardViewModel.h"

@interface PFScorecardTimeStatisticsTableViewCell()
@property(nonatomic, strong)UILabel *PFtitleLbl;
@end
@implementation PFScorecardTimeStatisticsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PFtitleLbl];
        
        [self.PFtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(60);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(PFScorecardViewModel *)model{
    _model = model;
    if (_model.PFtimeStatisticsDate) {
    NSString *timeStatisticsDateString = [PFUIUtilities PFformattedTimeStringWithDate:_model.PFtimeStatisticsDate format:@"HH:mm:ss"];
    self.PFtitleLbl.text = timeStatisticsDateString;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)PFtitleLbl{
    if (!_PFtitleLbl) {
        _PFtitleLbl = [[UILabel alloc] init];
        _PFtitleLbl.backgroundColor = [UIColor systemYellowColor];
        _PFtitleLbl.textColor = [UIColor whiteColor];
        _PFtitleLbl.font = [UIFont systemFontOfSize:40];
        _PFtitleLbl.textAlignment = NSTextAlignmentCenter;
        _PFtitleLbl.text = @"00:00:00";
    }
    return _PFtitleLbl;
}
@end
