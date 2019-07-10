//
//  stbaAddressBookDetailsTableViewCell.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/8.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddressBookDetailsTableViewCell.h"
#import "stbaAddressBookModel.h"
@interface stbaAddressBookDetailsTableViewCell()
@property(nonatomic, strong)UIImageView *headImgView;
@property(nonatomic, strong)UILabel *nameLbl;
@property(nonatomic, strong)UILabel *genderHeadLbl;
@property(nonatomic, strong)UILabel *genderContentLbl;
@property(nonatomic, strong)UILabel *phoneNumberHeadLbl;
@property(nonatomic, strong)UIButton *phoneNumberContentLbl;
@property(nonatomic, strong)UILabel *emailHeadLbl;
@property(nonatomic, strong)UILabel *emailContentLbl;
@end
@implementation stbaAddressBookDetailsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.headImgView];
        [self.contentView addSubview:self.nameLbl];
        [self.contentView addSubview:self.genderHeadLbl];
        [self.contentView addSubview:self.genderContentLbl];
        [self.contentView addSubview:self.phoneNumberHeadLbl];
        [self.contentView addSubview:self.phoneNumberContentLbl];
        [self.contentView addSubview:self.emailHeadLbl];
        [self.contentView addSubview:self.emailContentLbl];
        
        [self.headImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(30);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(51);
            make.height.mas_equalTo(51);
        }];
        [self.nameLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.headImgView.mas_bottom);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(40);
        }];
        UIView *line = [[UIView alloc] init];
        line.backgroundColor = stbaH_Color(242, 242, 242, 1);
        [self.contentView addSubview:line];
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.nameLbl.mas_bottom).offset(50);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(10);
        }];
        [self.genderHeadLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(line.mas_bottom).offset(20);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(20);
        }];
        [self.genderContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.top.equalTo(line.mas_bottom).offset(20);
            make.leading.mas_equalTo(self.genderHeadLbl.mas_trailing).offset(10);
            make.height.mas_equalTo(20);
        }];
        [self.phoneNumberHeadLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.genderHeadLbl.mas_bottom).offset(20);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(20);
        }];
        [self.phoneNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.genderContentLbl);
            make.top.equalTo(self.genderContentLbl.mas_bottom).offset(20);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(20);
        }];
        [self.emailHeadLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.phoneNumberHeadLbl.mas_bottom).offset(20);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
        [self.emailContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-15);
            make.top.equalTo(self.emailHeadLbl.mas_bottom).offset(20);
            make.leading.mas_equalTo(self.emailHeadLbl.mas_trailing).offset(10);
            make.height.mas_equalTo(20);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(stbaAddressBookModel *)model{
    _model = model;
    self.nameLbl.text = _model.name;
    if (_model.gender.length) {
        self.genderContentLbl.text = _model.gender;
    }else{
        self.genderContentLbl.text = @"-";
    }
    if (_model.phoneNumber.length) {
        [self.phoneNumberContentLbl setTitle:_model.phoneNumber forState:UIControlStateNormal];
    }else{
        [self.phoneNumberContentLbl setTitle:@"-" forState:UIControlStateNormal];
    }
    if (_model.email.length) {
        self.emailContentLbl.text = _model.email;
    }else{
        self.emailContentLbl.text = @"-";
    }
}
#pragma mark - 打电话
-(void)makePhoneCall{
    if (self.phoneNumberContentLbl.titleLabel.text.length && ![self.phoneNumberContentLbl.titleLabel.text isEqualToString:@"-"]) {
        NSMutableString* str=[[NSMutableString alloc] initWithFormat:@"tel:%@",self.phoneNumberContentLbl.titleLabel.text];
        UIWebView * callWebview = [[UIWebView alloc] init];
        [callWebview loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:str]]];
        [self.contentView addSubview:callWebview];
    }
}
#pragma mark - 属性懒加载
- (UIImageView *)headImgView{
    if (!_headImgView) {
        _headImgView = [[UIImageView alloc] init];
        _headImgView.image = [UIImage imageNamed:@"stbaIc_avator"];
    }
    return _headImgView;
}
- (UILabel *)nameLbl{
    if (!_nameLbl) {
        _nameLbl = [[UILabel alloc] init];
        _nameLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:18];
        _nameLbl.textColor = [UIColor blackColor];
        _nameLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _nameLbl;
}
- (UILabel *)genderHeadLbl{
    if (!_genderHeadLbl) {
        _genderHeadLbl = [[UILabel alloc] init];
        _genderHeadLbl.text = @"Gender";
        _genderHeadLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        _genderHeadLbl.textColor = [UIColor blackColor];
    }
    return _genderHeadLbl;
}
- (UILabel *)genderContentLbl{
    if (!_genderContentLbl) {
        _genderContentLbl = [[UILabel alloc] init];
        _genderContentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        _genderContentLbl.textColor = [UIColor grayColor];
        _genderContentLbl.textAlignment = NSTextAlignmentRight;
        _genderContentLbl.numberOfLines = 0;
    }
    return _genderContentLbl;
}
- (UILabel *)phoneNumberHeadLbl{
    if (!_phoneNumberHeadLbl) {
        _phoneNumberHeadLbl = [[UILabel alloc] init];
        _phoneNumberHeadLbl.text = @"Mobile phone";
        _phoneNumberHeadLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        _phoneNumberHeadLbl.textColor = [UIColor blackColor];
    }
    return _phoneNumberHeadLbl;
}
- (UIButton *)phoneNumberContentLbl{
    if (!_phoneNumberContentLbl) {
        _phoneNumberContentLbl = [[UIButton alloc] init];
        _phoneNumberContentLbl.titleLabel.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        [_phoneNumberContentLbl setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_phoneNumberContentLbl addTarget:self action:@selector(makePhoneCall) forControlEvents:UIControlEventTouchUpInside];
        [_phoneNumberContentLbl.titleLabel setTextAlignment:NSTextAlignmentRight];
    }
    return _phoneNumberContentLbl;
}
- (UILabel *)emailHeadLbl{
    if (!_emailHeadLbl) {
        _emailHeadLbl = [[UILabel alloc] init];
        _emailHeadLbl.text = @"Email";
        _emailHeadLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        _emailHeadLbl.textColor = [UIColor blackColor];
    }
    return _emailHeadLbl;
}
- (UILabel *)emailContentLbl{
    if (!_emailContentLbl) {
        _emailContentLbl = [[UILabel alloc] init];
        _emailContentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        _emailContentLbl.textColor = [UIColor grayColor];
        _emailContentLbl.textAlignment = NSTextAlignmentRight;
        _emailContentLbl.numberOfLines = 0;
    }
    return _emailContentLbl;
}
@end
