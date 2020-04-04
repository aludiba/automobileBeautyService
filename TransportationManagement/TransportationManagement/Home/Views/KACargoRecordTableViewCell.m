//
//  KACargoRecordTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "KACargoRecordTableViewCell.h"
#import "KACargoAddViewModel.h"
@interface KACargoRecordTableViewCell()
@property(nonatomic, strong)UILabel *KAtitleLbl;//标题
@property(nonatomic, strong)UILabel *KAcontentLbl;//内容
@property(nonatomic, strong)UIView *KAline;
@end
@implementation KACargoRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.KAtitleLbl];
        [self.contentView addSubview:self.KAcontentLbl];
        [self.contentView addSubview:self.KAline];
        
        [self.KAtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(15);
        }];
        [self.KAcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.KAtitleLbl.mas_trailing).offset(16);
            make.centerY.equalTo(self.KAtitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(60);
        }];
        [self.KAline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.KAtitleLbl.mas_bottom).offset(14);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setKAviewModel:(KACargoAddViewModel *)KAviewModel{
    _KAviewModel = KAviewModel;
    self.KAtitleLbl.text = _KAviewModel.KATitle;
    self.KAcontentLbl.text = _KAviewModel.KAContent;
    CGSize size = [self.KAcontentLbl sizeThatFits:CGSizeMake(KAWIDTH - 92, MAXFLOAT)];
    [self.KAcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(size.height);
    }];
    [self.KAcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)KAtitleLbl{
    if (!_KAtitleLbl) {
        _KAtitleLbl = [[UILabel alloc] init];
        _KAtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _KAtitleLbl.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _KAtitleLbl.numberOfLines = 2;
    }
    return _KAtitleLbl;
}
- (UILabel *)KAcontentLbl{
    if (!_KAcontentLbl) {
        _KAcontentLbl = [[UILabel alloc] init];
        _KAcontentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _KAcontentLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
        [_KAcontentLbl sizeToFit];
    }
    return _KAcontentLbl;
}
- (UIView *)KAline{
    if (!_KAline) {
        _KAline = [[UIView alloc] init];
        _KAline.backgroundColor = KAH_Color(242, 242, 242, 1);
    }
    return _KAline;
}
@end
