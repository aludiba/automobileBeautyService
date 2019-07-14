//
//  stbaAddActivitiesSelectAddTableViewCell.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/11.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddActivitiesSelectAddTableViewCell.h"
#import "stbaAddActivitiesViewModel.h"

@interface stbaAddActivitiesSelectAddTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *titleLbl;
@property(nonatomic, strong)UILabel *contentLbl;
@property(nonatomic, strong)UIImageView *rightArrowImgView;
@end
@implementation stbaAddActivitiesSelectAddTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.titleLbl];
        [self.contentView addSubview:self.contentLbl];
        [self.contentView addSubview:self.timeTextField];
        [self.contentView addSubview:self.rightArrowImgView];
        
        [self.titleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(26);
            make.top.equalTo(self.contentView).offset(15.5);
            make.width.mas_equalTo(102);
            make.height.mas_equalTo(48);
        }];
        [self.contentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(123);
            make.top.equalTo(self.contentView).offset(15.5);
            make.trailing.equalTo(self.contentView).offset(-33.5);
            make.height.mas_greaterThanOrEqualTo(48);
        }];
        [self.timeTextField mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(123);
            make.top.equalTo(self.contentView).offset(15.5);
            make.trailing.equalTo(self.contentView).offset(-33.5);
            make.height.mas_greaterThanOrEqualTo(48);
        }];
        [self.rightArrowImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.centerY.equalTo(self.titleLbl);
            make.width.mas_equalTo(22);
            make.height.mas_equalTo(22);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = stbaH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.contentLbl.mas_bottom).offset(14.5);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(stbaAddActivitiesViewModel *)model{
    _model = model;
    if (_model.currentType == stbaAddActivitiesCellChoose) {
        self.contentLbl.hidden = NO;
        self.timeTextField.hidden = YES;
        if (_model.content.length) {
            self.contentLbl.text = _model.content;
            self.contentLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        }else{
            self.contentLbl.text = _model.placeholder;
            self.contentLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
        }
    }else{
        self.contentLbl.hidden = YES;
        self.timeTextField.hidden = NO;
        if (_model.content.length) {
            self.timeTextField.text = _model.content;
            self.timeTextField.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        }else{
            self.timeTextField.text = _model.placeholder;
            self.timeTextField.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
        }
    }
    self.titleLbl.text = _model.title;
    if (_model.isDetail) {
        self.userInteractionEnabled = NO;
        self.titleLbl.textColor =  [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
        self.rightArrowImgView.hidden = YES;
    }else{
        self.userInteractionEnabled = YES;
        self.titleLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        self.rightArrowImgView.hidden = NO;
    }
}
//禁止用户输入文字
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    return NO;
}
#pragma mark - 属性懒加载
- (UILabel *)titleLbl{
    if (_titleLbl == nil) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _titleLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        _titleLbl.numberOfLines = 0;
    }
    return _titleLbl;
}
- (UILabel *)contentLbl{
    if (!_contentLbl) {
        _contentLbl = [[UILabel alloc] init];
        _contentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _contentLbl.textColor = [UIColor colorWithRed:168/255.0 green:172/255.0 blue:182/255.0 alpha:1/1.0];
        _contentLbl.numberOfLines = 0;
    }
    return _contentLbl;
}
- (UITextField *)timeTextField{
    if (!_timeTextField) {
        _timeTextField = [[UITextField alloc] init];
        _timeTextField.font = [UIFont fontWithName:@"PingFangSC-Regular" size:17];
        _timeTextField.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
        _timeTextField.delegate = self;
    }
    return _timeTextField;
}
- (UIImageView *)rightArrowImgView{
    if (!_rightArrowImgView) {
        _rightArrowImgView = [[UIImageView alloc] init];
        _rightArrowImgView.image = [UIImage imageNamed:@"apply_btc_check"];
    }
    return _rightArrowImgView;
}
@end
