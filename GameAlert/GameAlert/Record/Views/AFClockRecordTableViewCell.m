//
//  AFAFClockRecordTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFClockRecordTableViewCell.h"
#import "AFClockRecordModel.h"
@interface AFClockRecordTableViewCell()
@property(nonatomic, strong)UILabel *AFtitleLbl;
@property(nonatomic, strong)UILabel *AFcontentLbl;
@end
@implementation AFClockRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AFH_Color(44, 77, 93, 1);
        [self.contentView addSubview:self.AFtitleLbl];
        [self.contentView addSubview:self.AFcontentLbl];
        
        [self.AFtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(AFWIDTH * 1.8 / 3);
            make.height.mas_equalTo(40);
        }];
        [self.AFcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-10);
            make.top.equalTo(self.contentView).offset(40);
            make.leading.equalTo(self.AFtitleLbl.mas_trailing).offset(0);
            make.height.mas_equalTo(self.model.AFcontentHeight);
            make.bottom.equalTo(self.contentView).offset(-40);
        }];
    }
    return self;
}
- (void)setModel:(AFClockRecordModel *)model{
    _model = model;
    self.AFtitleLbl.text = _model.AFtitle;
    if (_model.AFcontent.length) {
        self.AFcontentLbl.text = _model.AFcontent;
    }else{
        self.AFcontentLbl.text = @"-";
    }
    CGSize size = [self.AFcontentLbl sizeThatFits:CGSizeMake(AFWIDTH - 32 - 100 - 10, MAXFLOAT)];
    _model.AFcontentHeight = size.height;
    [self.AFcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
    make.height.mas_equalTo(self.model.AFcontentHeight);
    }];
    [self.AFcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)AFtitleLbl{
    if (!_AFtitleLbl) {
        _AFtitleLbl = [[UILabel alloc] init];
        _AFtitleLbl.font = [UIFont systemFontOfSize:20];
        _AFtitleLbl.textColor = [UIColor blackColor];
        _AFtitleLbl.numberOfLines = 0;
        [_AFtitleLbl sizeToFit];
    }
    return _AFtitleLbl;
}
- (UILabel *)AFcontentLbl{
    if (!_AFcontentLbl) {
        _AFcontentLbl = [[UILabel alloc] init];
        _AFcontentLbl.textColor = [UIColor blackColor];
        _AFcontentLbl.font = [UIFont boldSystemFontOfSize:20];
        _AFcontentLbl.textAlignment = NSTextAlignmentRight;
        _AFcontentLbl.numberOfLines = 0;
        [_AFcontentLbl sizeToFit];
    }
    return _AFcontentLbl;
}
@end
