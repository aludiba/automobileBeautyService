//
//  CDAllClockLogsViewCellTableViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDAllClockLogsViewCellTableViewCell.h"
#import "CDGuideClockInformationModel.h"
@interface CDAllClockLogsViewCellTableViewCell()
@property(nonatomic, strong)UILabel *CDdateLabel;//日期
@property(nonatomic, strong)UILabel *CDcontentLbl;//内容
@property(nonatomic, strong)UIImageView *CDrightImgView;//已选
@property(nonatomic, strong)UIView *CDline;
@end
@implementation CDAllClockLogsViewCellTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.CDdateLabel];
        [self.contentView addSubview:self.CDcontentLbl];
        [self.contentView addSubview:self.CDrightImgView];
        [self.contentView addSubview:self.CDline];
        
        [self.CDdateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(24);
        }];
        [self.CDrightImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CDdateLabel.mas_trailing).offset(5);
            make.centerY.equalTo(self.CDdateLabel);
            make.width.mas_equalTo(21);
            make.height.mas_equalTo(21);
        }];
        [self.CDcontentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.CDdateLabel.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(CDHEICDT * 0.5);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.CDline mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.CDcontentLbl.mas_bottom).offset(14);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(CDWIDTH - 16);
            make.height.mas_equalTo(1);
        }];
    }
    return self;
}
- (void)setModel:(CDGuideClockInformationModel *)model{
    _model = model;
    self.CDdateLabel.text = [CDUIUtilities CDformattedTimeStringWithDate:_model.CDclockDate format:@"yyyy-MM-dd"];
    self.CDcontentLbl.text = _model.CDclockLogContent;
    CGSize size = [self.CDcontentLbl sizeThatFits:CGSizeMake(CDWIDTH - 32, MAXFLOAT)];
    [self.CDcontentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(size.height);
    }];
    [self.CDcontentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)CDdateLabel{
    if (!_CDdateLabel) {
        _CDdateLabel = [[UILabel alloc] init];
        _CDdateLabel.textColor = [UIColor blackColor];
        _CDdateLabel.font = [UIFont systemFontOfSize:18];
        _CDdateLabel.textAlignment = NSTextAlignmentCenter;
        _CDdateLabel.layer.cornerRadius = 8.0f;
        _CDdateLabel.layer.masksToBounds = YES;
        _CDdateLabel.layer.borderColor = [UIColor blackColor].CGColor;
        _CDdateLabel.layer.borderWidth = 1.5f;
        _CDdateLabel.backgroundColor = [UIColor greenColor];
        [_CDdateLabel sizeToFit];
    }
    return _CDdateLabel;
}
- (UILabel *)CDcontentLbl{
    if (!_CDcontentLbl) {
        _CDcontentLbl = [[UILabel alloc] init];
        _CDcontentLbl.textColor = [UIColor blackColor];
        _CDcontentLbl.font = [UIFont systemFontOfSize:16];
        _CDcontentLbl.numberOfLines = 0;
        [_CDcontentLbl sizeToFit];
    }
    return _CDcontentLbl;
}
- (UIImageView *)CDrightImgView{
    if (!_CDrightImgView) {
        _CDrightImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"CDBtn_Right"]];
    }
    return _CDrightImgView;
}
- (UIView *)CDline{
    if (!_CDline) {
        _CDline = [[UIView alloc] init];
        _CDline.backgroundColor = CDH_Color(242, 242, 242, 1);
    }
    return _CDline;
}
@end
