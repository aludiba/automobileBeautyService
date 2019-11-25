//
//  PWClockRecordTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PWClockRecordTableViewCell.h"
#import "PWClockRecordModel.h"
@interface PWClockRecordTableViewCell()
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UILabel *contentLbl;
@end
@implementation PWClockRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentLbl];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(150);
            make.height.mas_equalTo(18);
        }];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.titleLbl.mas_trailing).offset(10);
            make.height.mas_equalTo(self.model.contentHeight);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(PWClockRecordModel *)model{
    _model = model;
    self.titleLbl.text = _model.title;
    if (_model.content.length) {
        self.contentLbl.text = _model.content;
    }else{
        self.contentLbl.text = @"-";
    }
    CGSize size = [self.contentLbl sizeThatFits:CGSizeMake(PWWIDTH - 32 - 100 - 10, MAXFLOAT)];
    _model.contentHeight = size.height;
    [self.contentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
    make.height.mas_equalTo(self.model.contentHeight);
    }];
    [self.contentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.font = [UIFont systemFontOfSize:13];
        _titleLbl.textColor = [UIColor blackColor];
        _titleLbl.numberOfLines = 0;
        [_titleLbl sizeToFit];
    }
    return _titleLbl;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.textColor = [UIColor grayColor];
        _contentLbl.font = [UIFont systemFontOfSize:14];
        _contentLbl.textAlignment = NSTextAlignmentRight;
        _contentLbl.numberOfLines = 0;
        [_contentLbl sizeToFit];
    }
    return _contentLbl;
}
@end
