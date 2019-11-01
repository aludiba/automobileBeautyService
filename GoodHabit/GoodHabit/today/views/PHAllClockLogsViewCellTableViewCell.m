//
//  PHAllClockLogsViewCellTableViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHAllClockLogsViewCellTableViewCell.h"
#import "PHGuideClockInformationModel.h"
@interface PHAllClockLogsViewCellTableViewCell()
@property(nonatomic, strong)UILabel *PHdateLabel;//日期
@property(nonatomic, strong)UILabel *PHcontentLbl;//内容
@property(nonatomic, strong)UIImageView *PHrightImgView;//已选
@property(nonatomic, strong)UIView *PHline;
@end
@implementation PHAllClockLogsViewCellTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PHdateLabel];
        [self.contentView addSubview:self.PHcontentLbl];
        [self.contentView addSubview:self.PHrightImgView];
        [self.contentView addSubview:self.PHline];
        
        [self.PHdateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(24);
        }];
        [self.PHrightImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PHdateLabel.mas_trailing).offset(5);
            make.centerY.equalTo(self.PHdateLabel);
            make.width.mas_equalTo(21);
            make.height.mas_equalTo(21);
        }];
        [self.PHcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PHdateLabel.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(PHHEIPHT * 0.5);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.PHline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PHcontentLbl.mas_bottom).offset(14);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(PHWIDTH - 16);
            make.height.mas_equalTo(1);
        }];
    }
    return self;
}
- (void)setModel:(PHGuideClockInformationModel *)model{
    _model = model;
    self.PHdateLabel.text = [PHUIUtilities PHformattedTimeStringWithDate:_model.PHclockDate format:@"yyyy-MM-dd"];
    self.PHcontentLbl.text = _model.PHclockLogContent;
    CGSize size = [self.PHcontentLbl sizeThatFits:CGSizeMake(PHWIDTH - 32, MAXFLOAT)];
    [self.PHcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(size.height);
    }];
    [self.PHcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)PHdateLabel{
    if (!_PHdateLabel) {
        _PHdateLabel = [[UILabel alloc] init];
        _PHdateLabel.textColor = [UIColor blackColor];
        _PHdateLabel.font = [UIFont systemFontOfSize:18];
        _PHdateLabel.textAlignment = NSTextAlignmentCenter;
        _PHdateLabel.layer.cornerRadius = 8.0f;
        _PHdateLabel.layer.masksToBounds = YES;
        _PHdateLabel.layer.borderColor = [UIColor blackColor].CGColor;
        _PHdateLabel.layer.borderWidth = 1.5f;
        _PHdateLabel.backgroundColor = [UIColor greenColor];
        [_PHdateLabel sizeToFit];
    }
    return _PHdateLabel;
}
- (UILabel *)PHcontentLbl{
    if (!_PHcontentLbl) {
        _PHcontentLbl = [[UILabel alloc] init];
        _PHcontentLbl.textColor = [UIColor blackColor];
        _PHcontentLbl.font = [UIFont systemFontOfSize:16];
        _PHcontentLbl.numberOfLines = 0;
        [_PHcontentLbl sizeToFit];
    }
    return _PHcontentLbl;
}
- (UIImageView *)PHrightImgView{
    if (!_PHrightImgView) {
        _PHrightImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"PHBtn_Right"]];
    }
    return _PHrightImgView;
}
- (UIView *)PHline{
    if (!_PHline) {
        _PHline = [[UIView alloc] init];
        _PHline.backgroundColor = PHH_Color(242, 242, 242, 1);
    }
    return _PHline;
}
@end
