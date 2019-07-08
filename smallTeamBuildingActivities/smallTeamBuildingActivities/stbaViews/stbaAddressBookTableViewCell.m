//
//  stbaAddressBookTableViewCell.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddressBookTableViewCell.h"
#import "stbaAddressBookModel.h"
@interface stbaAddressBookTableViewCell()
@property(nonatomic, strong)UIView *nameHeadView;
@property(nonatomic, strong)UILabel *nameContentLbl;
@property(nonatomic, strong)UILabel *genderHeadLbl;
@property(nonatomic, strong)UILabel *genderContentLbl;
@property(nonatomic, strong)UILabel *phoneNumberHeadLbl;
@property(nonatomic, strong)UILabel *phoneNumberContentLbl;
@property(nonatomic, strong)UILabel *emailHeadLbl;
@property(nonatomic, strong)UILabel *emailContentLbl;
@end
@implementation stbaAddressBookTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.nameHeadView];
        [self.contentView addSubview:self.nameContentLbl];
        [self.contentView addSubview:self.genderHeadLbl];
        [self.contentView addSubview:self.genderContentLbl];
        [self.contentView addSubview:self.phoneNumberHeadLbl];
        [self.contentView addSubview:self.phoneNumberContentLbl];
        [self.contentView addSubview:self.emailHeadLbl];
        [self.contentView addSubview:self.emailContentLbl];
        
        [self.nameHeadView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView);
            make.top.equalTo(self.contentView).offset(24);
            make.width.mas_equalTo(3);
            make.height.mas_equalTo(16);
        }];
        [self.nameContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.nameHeadView.mas_trailing).offset(12);
            make.top.equalTo(self.contentView).offset(22);
            make.trailing.equalTo(self.contentView).offset(-12);
            make.height.mas_equalTo(22.5);
        }];
        [self.genderHeadLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.nameContentLbl.mas_bottom).offset(6.5);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(40);
        }];
        [self.genderContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.genderHeadLbl.mas_trailing).offset(20);
            make.top.equalTo(self.nameContentLbl.mas_bottom).offset(6.5);
            make.trailing.equalTo(self.contentView).offset(-20);
            make.height.mas_equalTo(40);
        }];
        [self.phoneNumberHeadLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.genderHeadLbl.mas_bottom).offset(2);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(40);
        }];
        [self.phoneNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.phoneNumberHeadLbl.mas_trailing).offset(20);
            make.top.equalTo(self.genderContentLbl.mas_bottom).offset(2);
            make.trailing.equalTo(self.contentView).offset(-20);
            make.height.mas_equalTo(40);
        }];
        [self.emailHeadLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.phoneNumberHeadLbl.mas_bottom).offset(2);
            make.width.mas_equalTo(60);
            make.height.mas_equalTo(40);
        }];
        [self.emailContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.emailHeadLbl.mas_trailing).offset(20);
            make.top.equalTo(self.phoneNumberContentLbl.mas_bottom).offset(2);
            make.trailing.equalTo(self.contentView).offset(-20);
            make.height.mas_equalTo(40);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = stbaH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView);
            make.top.equalTo(self.emailContentLbl.mas_bottom).offset(21);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
- (void)setModel:(stbaAddressBookModel *)model{
    _model = model;
    if (_model.name.length) {
        self.nameContentLbl.text = _model.name;
    }else{
        self.nameContentLbl.text = @"-";
    }
    if (_model.gender.length) {
        self.genderContentLbl.text = _model.gender;
    }else{
        self.genderContentLbl.text = @"-";
    }
    if (_model.phoneNumber.length) {
        self.phoneNumberContentLbl.text = _model.phoneNumber;
    }else{
        self.phoneNumberContentLbl.text = @"-";
    }
    if (_model.email.length) {
        self.emailContentLbl.text = _model.email;
    }else{
        self.emailContentLbl.text = @"-";
    }
}
#pragma mark - 属性懒加载
- (UIView *)nameHeadView{
    if (!_nameHeadView) {
        _nameHeadView = [[UIView alloc] init];
        _nameHeadView.backgroundColor = [UIColor blackColor];
    }
    return _nameHeadView;
}
- (UILabel *)nameContentLbl{
    if (!_nameContentLbl) {
        _nameContentLbl = [[UILabel alloc] init];
        _nameContentLbl.font = [UIFont fontWithName:@"PingFangSC-Semibold" size:16];
        _nameContentLbl.textColor = [UIColor colorWithRed:57/255.0 green:66/255.0 blue:89/255.0 alpha:1/1.0];
    }
    return _nameContentLbl;
}
- (UILabel *)genderHeadLbl{
    if (!_genderHeadLbl) {
        _genderHeadLbl = [[UILabel alloc] init];
        _genderHeadLbl.text = @"Gender";
        _genderHeadLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _genderHeadLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
        _genderHeadLbl.numberOfLines = 0;
    }
    return _genderHeadLbl;
}
- (UILabel *)genderContentLbl{
    if (!_genderContentLbl) {
        _genderContentLbl = [[UILabel alloc] init];
        _genderContentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _genderContentLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
    }
    return _genderContentLbl;
}
- (UILabel *)phoneNumberHeadLbl{
    if (!_phoneNumberHeadLbl) {
        _phoneNumberHeadLbl = [[UILabel alloc] init];
        _phoneNumberHeadLbl.text = @"Mobile Phone";
        _phoneNumberHeadLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _phoneNumberHeadLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
        _phoneNumberHeadLbl.numberOfLines = 0;
    }
    return _phoneNumberHeadLbl;
}
- (UILabel *)phoneNumberContentLbl{
    if (!_phoneNumberContentLbl) {
        _phoneNumberContentLbl = [[UILabel alloc] init];
        _phoneNumberContentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _phoneNumberContentLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
    }
    return _phoneNumberContentLbl;
}
- (UILabel *)emailHeadLbl{
    if (!_emailHeadLbl) {
        _emailHeadLbl = [[UILabel alloc] init];
        _emailHeadLbl.text = @"Email";
        _emailHeadLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _emailHeadLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
        _emailHeadLbl.numberOfLines = 0;
    }
    return _emailHeadLbl;
}
- (UILabel *)emailContentLbl{
    if (!_emailContentLbl) {
        _emailContentLbl = [[UILabel alloc] init];
        _emailContentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _emailContentLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
    }
    return _emailContentLbl;
}
@end
