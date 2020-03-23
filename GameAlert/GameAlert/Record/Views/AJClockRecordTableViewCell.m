//
//  AJAJClockRecordTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJClockRecordTableViewCell.h"
#import "AJClockRecordModel.h"
@interface AJClockRecordTableViewCell()
@property(nonatomic, strong)UILabel *AJtitleLbl;
@property(nonatomic, strong)UILabel *AJcontentLbl;
@end
@implementation AJClockRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AJH_Color(44, 77, 93, 1);
        [self.contentView addSubview:self.AJtitleLbl];
        [self.contentView addSubview:self.AJcontentLbl];
        
        [self.AJtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(AJWIDTH * 1.8 / 3);
            make.height.mas_equalTo(40);
        }];
        [self.AJcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-10);
            make.top.equalTo(self.contentView).offset(40);
            make.leading.equalTo(self.AJtitleLbl.mas_trailing).offset(0);
            make.height.mas_equalTo(self.model.AJcontentHeight);
            make.bottom.equalTo(self.contentView).offset(-40);
        }];
    }
    return self;
}
- (void)setModel:(AJClockRecordModel *)model{
    _model = model;
    self.AJtitleLbl.text = _model.AJtitle;
    if (_model.AJcontent.length) {
        self.AJcontentLbl.text = _model.AJcontent;
    }else{
        self.AJcontentLbl.text = @"-";
    }
    CGSize size = [self.AJcontentLbl sizeThatFits:CGSizeMake(AJWIDTH - 32 - 100 - 10, MAXFLOAT)];
    _model.AJcontentHeight = size.height;
    [self.AJcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
    make.height.mas_equalTo(self.model.AJcontentHeight);
    }];
    [self.AJcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)AJtitleLbl{
    if (!_AJtitleLbl) {
        _AJtitleLbl = [[UILabel alloc] init];
        _AJtitleLbl.font = [UIFont systemFontOfSize:20];
        _AJtitleLbl.textColor = [UIColor blackColor];
        _AJtitleLbl.numberOfLines = 0;
        [_AJtitleLbl sizeToFit];
    }
    return _AJtitleLbl;
}
- (UILabel *)AJcontentLbl{
    if (!_AJcontentLbl) {
        _AJcontentLbl = [[UILabel alloc] init];
        _AJcontentLbl.textColor = [UIColor blackColor];
        _AJcontentLbl.font = [UIFont boldSystemFontOfSize:20];
        _AJcontentLbl.textAlignment = NSTextAlignmentRight;
        _AJcontentLbl.numberOfLines = 0;
        [_AJcontentLbl sizeToFit];
    }
    return _AJcontentLbl;
}
@end
