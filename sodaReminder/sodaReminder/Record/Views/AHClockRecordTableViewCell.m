//
//  AHAHClockRecordTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHClockRecordTableViewCell.h"
#import "AHClockRecordModel.h"
@interface AHClockRecordTableViewCell()
@property(nonatomic, strong)UILabel *AHtitleLbl;
@property(nonatomic, strong)UILabel *AHcontentLbl;
@end
@implementation AHClockRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AHH_Color(242, 242, 242, 1);
        [self.contentView addSubview:self.AHtitleLbl];
        [self.contentView addSubview:self.AHcontentLbl];
        
        [self.AHtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(AHWIDTH * 0.5);
            make.height.mas_equalTo(25);
        }];
        [self.AHcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(25);
            make.leading.equalTo(self.AHtitleLbl.mas_trailing).offset(10);
            make.height.mas_equalTo(self.AHmodel.AHcontentHeight);
            make.bottom.equalTo(self.contentView).offset(-25);
        }];
    }
    return self;
}
- (void)setAHmodel:(AHClockRecordModel *)AHmodel{
    _AHmodel = AHmodel;
    self.AHtitleLbl.text = _AHmodel.AHtitle;
    if (_AHmodel.AHcontent.length) {
        self.AHcontentLbl.text = _AHmodel.AHcontent;
    }else{
        self.AHcontentLbl.text = @"-";
    }
    CGSize size = [self.AHcontentLbl sizeThatFits:CGSizeMake(AHWIDTH - 32 - 100 - 10, MAXFLOAT)];
    _AHmodel.AHcontentHeight = size.height;
    [self.AHcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
    make.height.mas_equalTo(self.AHmodel.AHcontentHeight);
    }];
    [self.AHcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)AHtitleLbl{
    if (!_AHtitleLbl) {
        _AHtitleLbl = [[UILabel alloc] init];
        _AHtitleLbl.font = [UIFont systemFontOfSize:20];
        _AHtitleLbl.textColor = [UIColor blackColor];
        _AHtitleLbl.numberOfLines = 0;
        [_AHtitleLbl sizeToFit];
    }
    return _AHtitleLbl;
}
- (UILabel *)AHcontentLbl{
    if (!_AHcontentLbl) {
        _AHcontentLbl = [[UILabel alloc] init];
        _AHcontentLbl.textColor = [UIColor grayColor];
        _AHcontentLbl.font = [UIFont systemFontOfSize:24];
        _AHcontentLbl.textAlignment = NSTextAlignmentRight;
        _AHcontentLbl.numberOfLines = 0;
        [_AHcontentLbl sizeToFit];
    }
    return _AHcontentLbl;
}
@end
