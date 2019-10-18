//
//  SOSOClockRecordTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOClockRecordTableViewCell.h"
#import "SOClockRecordModel.h"
@interface SOClockRecordTableViewCell()
@property(nonatomic, strong)UILabel *SOtitleLbl;
@property(nonatomic, strong)UILabel *SOcontentLbl;
@end
@implementation SOClockRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = SOH_Color(242, 242, 242, 1);
        [self.contentView addSubview:self.SOtitleLbl];
        [self.contentView addSubview:self.SOcontentLbl];
        
        [self.SOtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(SOWIDTH * 0.5);
            make.height.mas_equalTo(25);
        }];
        [self.SOcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(25);
            make.leading.equalTo(self.SOtitleLbl.mas_trailing).offset(10);
            make.height.mas_equalTo(self.model.SOcontentHeight);
            make.bottom.equalTo(self.contentView).offset(-25);
        }];
    }
    return self;
}
- (void)setModel:(SOClockRecordModel *)model{
    _model = model;
    self.SOtitleLbl.text = _model.SOtitle;
    if (_model.SOcontent.length) {
        self.SOcontentLbl.text = _model.SOcontent;
    }else{
        self.SOcontentLbl.text = @"-";
    }
    CGSize size = [self.SOcontentLbl sizeThatFits:CGSizeMake(SOWIDTH - 32 - 100 - 10, MAXFLOAT)];
    _model.SOcontentHeight = size.height;
    [self.SOcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
    make.height.mas_equalTo(self.model.SOcontentHeight);
    }];
    [self.SOcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)SOtitleLbl{
    if (!_SOtitleLbl) {
        _SOtitleLbl = [[UILabel alloc] init];
        _SOtitleLbl.font = [UIFont systemFontOfSize:20];
        _SOtitleLbl.textColor = [UIColor blackColor];
        _SOtitleLbl.numberOfLines = 0;
        [_SOtitleLbl sizeToFit];
    }
    return _SOtitleLbl;
}
- (UILabel *)SOcontentLbl{
    if (!_SOcontentLbl) {
        _SOcontentLbl = [[UILabel alloc] init];
        _SOcontentLbl.textColor = [UIColor grayColor];
        _SOcontentLbl.font = [UIFont systemFontOfSize:24];
        _SOcontentLbl.textAlignment = NSTextAlignmentRight;
        _SOcontentLbl.numberOfLines = 0;
        [_SOcontentLbl sizeToFit];
    }
    return _SOcontentLbl;
}
@end
