//
//  EAEAClockRecordTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAClockRecordTableViewCell.h"
#import "EAClockRecordModel.h"
@interface EAClockRecordTableViewCell()
@property(nonatomic, strong)UILabel *EAtitleLbl;
@property(nonatomic, strong)UILabel *EAcontentLbl;
@end
@implementation EAClockRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = EAH_Color(242, 242, 242, 1);
        [self.contentView addSubview:self.EAtitleLbl];
        [self.contentView addSubview:self.EAcontentLbl];
        
        [self.EAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(EAWIDTH * 0.5);
            make.height.mas_equalTo(25);
        }];
        [self.EAcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(25);
            make.leading.equalTo(self.EAtitleLbl.mas_trailing).offset(10);
            make.height.mas_equalTo(self.model.EAcontentHeight);
            make.bottom.equalTo(self.contentView).offset(-25);
        }];
    }
    return self;
}
- (void)setModel:(EAClockRecordModel *)model{
    _model = model;
    self.EAtitleLbl.text = _model.EAtitle;
    if (_model.EAcontent.length) {
        self.EAcontentLbl.text = _model.EAcontent;
    }else{
        self.EAcontentLbl.text = @"-";
    }
    CGSize size = [self.EAcontentLbl sizeThatFits:CGSizeMake(EAWIDTH - 32 - 100 - 10, MAXFLOAT)];
    _model.EAcontentHeight = size.height;
    [self.EAcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
    make.height.mas_equalTo(self.model.EAcontentHeight);
    }];
    [self.EAcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)EAtitleLbl{
    if (!_EAtitleLbl) {
        _EAtitleLbl = [[UILabel alloc] init];
        _EAtitleLbl.font = [UIFont systemFontOfSize:20];
        _EAtitleLbl.textColor = [UIColor blackColor];
        _EAtitleLbl.numberOfLines = 0;
        [_EAtitleLbl sizeToFit];
    }
    return _EAtitleLbl;
}
- (UILabel *)EAcontentLbl{
    if (!_EAcontentLbl) {
        _EAcontentLbl = [[UILabel alloc] init];
        _EAcontentLbl.textColor = [UIColor grayColor];
        _EAcontentLbl.font = [UIFont systemFontOfSize:24];
        _EAcontentLbl.textAlignment = NSTextAlignmentRight;
        _EAcontentLbl.numberOfLines = 0;
        [_EAcontentLbl sizeToFit];
    }
    return _EAcontentLbl;
}
@end
