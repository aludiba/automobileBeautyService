//
//  BGCargoRecordTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "BGCargoRecordTableViewCell.h"
#import "BGCargoAddViewModel.h"
@interface BGCargoRecordTableViewCell()
@property(nonatomic, strong)UILabel *BGtitleLbl;//标题
@property(nonatomic, strong)UILabel *BGcontentLbl;//内容
@property(nonatomic, strong)UIView *BGline;
@end
@implementation BGCargoRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.BGtitleLbl];
        [self.contentView addSubview:self.BGcontentLbl];
        [self.contentView addSubview:self.BGline];
        
        [self.BGtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(15);
        }];
        [self.BGcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.BGtitleLbl.mas_trailing).offset(16);
            make.centerY.equalTo(self.BGtitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(60);
        }];
        [self.BGline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.BGtitleLbl.mas_bottom).offset(14);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setBGviewModel:(BGCargoAddViewModel *)BGviewModel{
    _BGviewModel = BGviewModel;
    self.BGtitleLbl.text = _BGviewModel.BGTitle;
    self.BGcontentLbl.text = _BGviewModel.BGContent;
    CGSize size = [self.BGcontentLbl sizeThatFits:CGSizeMake(BGWIDTH - 92, MAXFLOAT)];
    [self.BGcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(size.height);
    }];
    [self.BGcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)BGtitleLbl{
    if (!_BGtitleLbl) {
        _BGtitleLbl = [[UILabel alloc] init];
        _BGtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _BGtitleLbl.textColor = [UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0];
        _BGtitleLbl.numberOfLines = 2;
    }
    return _BGtitleLbl;
}
- (UILabel *)BGcontentLbl{
    if (!_BGcontentLbl) {
        _BGcontentLbl = [[UILabel alloc] init];
        _BGcontentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _BGcontentLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
        [_BGcontentLbl sizeToFit];
    }
    return _BGcontentLbl;
}
- (UIView *)BGline{
    if (!_BGline) {
        _BGline = [[UIView alloc] init];
        _BGline.backgroundColor = BGH_Color(242, 242, 242, 1);
    }
    return _BGline;
}
@end
