//
//  ALCargoRecordTableViewCell.m
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/4.
//  Copyright © 2020 hb. All rights reserved.
//

#import "ALCargoRecordTableViewCell.h"
#import "ALCargoAddViewModel.h"
@interface ALCargoRecordTableViewCell()
@property(nonatomic, strong)UILabel *ALtitleLbl;//标题
@property(nonatomic, strong)UILabel *ALcontentLbl;//内容
@property(nonatomic, strong)UIView *ALline;
@end
@implementation ALCargoRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.ALtitleLbl];
        [self.contentView addSubview:self.ALcontentLbl];
        [self.contentView addSubview:self.ALline];
        
        [self.ALtitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(15);
        }];
        [self.ALcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.ALtitleLbl.mas_trailing).offset(16);
            make.centerY.equalTo(self.ALtitleLbl);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(60);
        }];
        [self.ALline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.ALtitleLbl.mas_bottom).offset(14);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setALviewModel:(ALCargoAddViewModel *)ALviewModel{
    _ALviewModel = ALviewModel;
    self.ALtitleLbl.text = _ALviewModel.ALTitle;
    self.ALcontentLbl.text = _ALviewModel.ALContent;
    CGSize size = [self.ALcontentLbl sizeThatFits:CGSizeMake(ALWIDTH - 92, MAXFLOAT)];
    [self.ALcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(size.height);
    }];
    [self.ALcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)ALtitleLbl{
    if (!_ALtitleLbl) {
        _ALtitleLbl = [[UILabel alloc] init];
        _ALtitleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _ALtitleLbl.textColor = [UIColor systemBlueColor];
        _ALtitleLbl.numberOfLines = 2;
    }
    return _ALtitleLbl;
}
- (UILabel *)ALcontentLbl{
    if (!_ALcontentLbl) {
        _ALcontentLbl = [[UILabel alloc] init];
        _ALcontentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _ALcontentLbl.textColor = [UIColor blackColor];
        [_ALcontentLbl sizeToFit];
    }
    return _ALcontentLbl;
}
- (UIView *)ALline{
    if (!_ALline) {
        _ALline = [[UIView alloc] init];
        _ALline.backgroundColor = ALH_Color(242, 242, 242, 1);
    }
    return _ALline;
}
@end
