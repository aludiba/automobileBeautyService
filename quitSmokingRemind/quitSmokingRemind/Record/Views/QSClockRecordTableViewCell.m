//
//  QSQSClockRecordTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/11.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSClockRecordTableViewCell.h"
#import "QSClockRecordModel.h"
@interface QSClockRecordTableViewCell()
@property(nonatomic, strong)UILabel *QStitleLbl;
@property(nonatomic, strong)UILabel *QScontentLbl;
@end
@implementation QSClockRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.QStitleLbl];
        [self.contentView addSubview:self.QScontentLbl];
        
        [self.QStitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(160);
            make.height.mas_equalTo(18);
        }];
        [self.QScontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.QStitleLbl.mas_trailing).offset(10);
            make.height.mas_equalTo(self.model.QScontentHeight);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
    }
    return self;
}
- (void)setModel:(QSClockRecordModel *)model{
    _model = model;
    self.QStitleLbl.text = _model.QStitle;
    if (_model.QScontent.length) {
        self.QScontentLbl.text = _model.QScontent;
    }else{
        self.QScontentLbl.text = @"-";
    }
    CGSize size = [self.QScontentLbl sizeThatFits:CGSizeMake(QSWIDTH - 32 - 100 - 10, MAXFLOAT)];
    _model.QScontentHeight = size.height;
    [self.QScontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
    make.height.mas_equalTo(self.model.QScontentHeight);
    }];
    [self.QScontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)QStitleLbl{
    if (!_QStitleLbl) {
        _QStitleLbl = [[UILabel alloc] init];
        _QStitleLbl.font = [UIFont systemFontOfSize:13];
        _QStitleLbl.textColor = [UIColor blackColor];
        _QStitleLbl.numberOfLines = 0;
        [_QStitleLbl sizeToFit];
    }
    return _QStitleLbl;
}
- (UILabel *)QScontentLbl{
    if (!_QScontentLbl) {
        _QScontentLbl = [[UILabel alloc] init];
        _QScontentLbl.textColor = [UIColor grayColor];
        _QScontentLbl.font = [UIFont systemFontOfSize:14];
        _QScontentLbl.textAlignment = NSTextAlignmentRight;
        _QScontentLbl.numberOfLines = 0;
        [_QScontentLbl sizeToFit];
    }
    return _QScontentLbl;
}
@end
