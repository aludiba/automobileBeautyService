//
//  GHAllClockLogsViewCellTableViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/23.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHAllClockLogsViewCellTableViewCell.h"
#import "GHGuideClockInformationModel.h"
@interface GHAllClockLogsViewCellTableViewCell()
@property(nonatomic, strong)UILabel *dateLabel;//日期
@property(nonatomic, strong)UILabel *contentLbl;//内容
@property(nonatomic, strong)UIImageView *rightImgView;//已选
@property(nonatomic, strong)UIView *line;
@end
@implementation GHAllClockLogsViewCellTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.dateLabel];
        [self.contentView addSubview:self.contentLbl];
        [self.contentView addSubview:self.rightImgView];
        [self.contentView addSubview:self.line];
        
        [self.dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(24);
        }];
        [self.rightImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.dateLabel.mas_trailing).offset(5);
            make.centerY.equalTo(self.dateLabel);
            make.width.mas_equalTo(21);
            make.height.mas_equalTo(21);
        }];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.dateLabel.mas_bottom).offset(15);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.height.mas_equalTo(GHHEIGHT * 0.5);
            make.bottom.equalTo(self.contentView).offset(-15);
        }];
        [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentLbl.mas_bottom).offset(14);
            make.leading.equalTo(self.contentView).offset(16);
            make.width.mas_equalTo(GHWIDTH - 16);
            make.height.mas_equalTo(1);
        }];
    }
    return self;
}
- (void)setModel:(GHGuideClockInformationModel *)model{
    _model = model;
    self.dateLabel.text = [GHUIUtilities GHformattedTimeStringWithDate:_model.clockDate format:@"yyyy-MM-dd"];
    self.contentLbl.text = _model.clockLogContent;
    CGSize size = [self.contentLbl sizeThatFits:CGSizeMake(GHWIDTH - 32, MAXFLOAT)];
    [self.contentLbl mas_updateConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(size.height);
    }];
    [self.contentLbl layoutIfNeeded];
    [self.contentView layoutSubviews];
}
#pragma mark - 属性懒加载
- (UILabel *)dateLabel{
    if (!_dateLabel) {
        _dateLabel = [[UILabel alloc] init];
        _dateLabel.textColor = [UIColor blackColor];
        _dateLabel.font = [UIFont systemFontOfSize:18];
        _dateLabel.textAlignment = NSTextAlignmentCenter;
        _dateLabel.layer.cornerRadius = 8.0f;
        _dateLabel.layer.masksToBounds = YES;
        _dateLabel.layer.borderColor = [UIColor blackColor].CGColor;
        _dateLabel.layer.borderWidth = 1.5f;
        _dateLabel.backgroundColor = [UIColor greenColor];
        [_dateLabel sizeToFit];
    }
    return _dateLabel;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.textColor = [UIColor blackColor];
        _contentLbl.font = [UIFont systemFontOfSize:16];
        _contentLbl.numberOfLines = 0;
        [_contentLbl sizeToFit];
    }
    return _contentLbl;
}
- (UIImageView *)rightImgView{
    if (!_rightImgView) {
        _rightImgView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"GHBtn_Right"]];
    }
    return _rightImgView;
}
- (UIView *)line{
    if (!_line) {
        _line = [[UIView alloc] init];
        _line.backgroundColor = GHH_Color(242, 242, 242, 1);
    }
    return _line;
}
@end
