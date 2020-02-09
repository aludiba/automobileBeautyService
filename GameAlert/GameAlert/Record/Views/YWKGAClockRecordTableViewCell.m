//
//  YWKGAYWKGAClockRecordTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGAClockRecordTableViewCell.h"
#import "YWKGAClockRecordModel.h"
@interface YWKGAClockRecordTableViewCell()
@property(nonatomic, strong)UILabel *YWKGAtitleLbl;
@property(nonatomic, strong)UILabel *YWKGAcontentLbl;
@end
@implementation YWKGAClockRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.YWKGAtitleLbl];
        [self.contentView addSubview:self.YWKGAcontentLbl];
        
        [self.YWKGAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(YWKGAWIDTH * 1.8 / 3);
            make.height.mas_equalTo(20);
        }];
        [self.YWKGAcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-10);
            make.top.equalTo(self.contentView).offset(20);
            make.leading.equalTo(self.YWKGAtitleLbl.mas_trailing).offset(10);
            make.height.mas_equalTo(self.model.YWKGAcontentHeight);
            make.bottom.equalTo(self.contentView).offset(-20);
        }];
    }
    return self;
}
- (void)setModel:(YWKGAClockRecordModel *)model{
    _model = model;
    self.YWKGAtitleLbl.text = _model.YWKGAtitle;
    if (_model.YWKGAcontent.length) {
        self.YWKGAcontentLbl.text = _model.YWKGAcontent;
    }else{
        self.YWKGAcontentLbl.text = @"-";
    }
    CGSize size = [self.YWKGAcontentLbl sizeThatFits:CGSizeMake(YWKGAWIDTH - 32 - 100 - 10, MAXFLOAT)];
    _model.YWKGAcontentHeight = size.height;
    [self.YWKGAcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
    make.height.mas_equalTo(self.model.YWKGAcontentHeight);
    }];
    [self.YWKGAcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)YWKGAtitleLbl{
    if (!_YWKGAtitleLbl) {
        _YWKGAtitleLbl = [[UILabel alloc] init];
        _YWKGAtitleLbl.font = [UIFont systemFontOfSize:16];
        _YWKGAtitleLbl.textColor = [UIColor blackColor];
        _YWKGAtitleLbl.numberOfLines = 0;
        [_YWKGAtitleLbl sizeToFit];
    }
    return _YWKGAtitleLbl;
}
- (UILabel *)YWKGAcontentLbl{
    if (!_YWKGAcontentLbl) {
        _YWKGAcontentLbl = [[UILabel alloc] init];
        _YWKGAcontentLbl.textColor = [UIColor blackColor];
        _YWKGAcontentLbl.font = [UIFont boldSystemFontOfSize:18];
        _YWKGAcontentLbl.textAlignment = NSTextAlignmentRight;
        _YWKGAcontentLbl.numberOfLines = 0;
        [_YWKGAcontentLbl sizeToFit];
    }
    return _YWKGAcontentLbl;
}
@end
