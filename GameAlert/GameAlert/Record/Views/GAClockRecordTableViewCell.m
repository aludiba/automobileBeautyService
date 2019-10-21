//
//  GAGAClockRecordTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAClockRecordTableViewCell.h"
#import "GAClockRecordModel.h"
@interface GAClockRecordTableViewCell()
@property(nonatomic, strong)UILabel *GAtitleLbl;
@property(nonatomic, strong)UILabel *GAcontentLbl;
@end
@implementation GAClockRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.GAtitleLbl];
        [self.contentView addSubview:self.GAcontentLbl];
        
        [self.GAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(GAWIDTH * 1.8 / 3);
            make.height.mas_equalTo(20);
        }];
        [self.GAcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-20);
            make.top.equalTo(self.contentView).offset(20);
            make.leading.equalTo(self.GAtitleLbl.mas_trailing).offset(10);
            make.height.mas_equalTo(self.model.GAcontentHeight);
            make.bottom.equalTo(self.contentView).offset(-20);
        }];
    }
    return self;
}
- (void)setModel:(GAClockRecordModel *)model{
    _model = model;
    self.GAtitleLbl.text = _model.GAtitle;
    if (_model.GAcontent.length) {
        self.GAcontentLbl.text = _model.GAcontent;
    }else{
        self.GAcontentLbl.text = @"-";
    }
    CGSize size = [self.GAcontentLbl sizeThatFits:CGSizeMake(GAWIDTH - 32 - 100 - 10, MAXFLOAT)];
    _model.GAcontentHeight = size.height;
    [self.GAcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
    make.height.mas_equalTo(self.model.GAcontentHeight);
    }];
    [self.GAcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)GAtitleLbl{
    if (!_GAtitleLbl) {
        _GAtitleLbl = [[UILabel alloc] init];
        _GAtitleLbl.font = [UIFont systemFontOfSize:16];
        _GAtitleLbl.textColor = [UIColor blackColor];
        _GAtitleLbl.numberOfLines = 0;
        [_GAtitleLbl sizeToFit];
    }
    return _GAtitleLbl;
}
- (UILabel *)GAcontentLbl{
    if (!_GAcontentLbl) {
        _GAcontentLbl = [[UILabel alloc] init];
        _GAcontentLbl.textColor = [UIColor blackColor];
        _GAcontentLbl.font = [UIFont boldSystemFontOfSize:18];
        _GAcontentLbl.textAlignment = NSTextAlignmentRight;
        _GAcontentLbl.numberOfLines = 0;
        [_GAcontentLbl sizeToFit];
    }
    return _GAcontentLbl;
}
@end
