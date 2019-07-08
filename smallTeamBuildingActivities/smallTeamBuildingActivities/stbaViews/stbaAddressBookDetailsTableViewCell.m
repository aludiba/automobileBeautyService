//
//  stbaAddressBookDetailsTableViewCell.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/8.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddressBookDetailsTableViewCell.h"
@interface stbaAddressBookDetailsTableViewCell()
@property(nonatomic, strong)UIImageView *headImgView;
@property(nonatomic, strong)UILabel *nameLbl;
@property(nonatomic, strong)UILabel *genderHeadLbl;
@property(nonatomic, strong)UILabel *genderContentLbl;
@property(nonatomic, strong)UILabel *phoneNumberHeadLbl;
@property(nonatomic, strong)UILabel *phoneNumberContentLbl;
@property(nonatomic, strong)UILabel *emailHeadLbl;
@property(nonatomic, strong)UILabel *emailContentLbl;
@end
@implementation stbaAddressBookDetailsTableViewCell
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
    }
    return _nameLbl;
}
- (UILabel *)genderHeadLbl{
    if (!_genderHeadLbl) {
        _genderHeadLbl = [[UILabel alloc] init];
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
    }
    return _genderContentLbl;
}
- (UILabel *)phoneNumberHeadLbl{
    if (!_phoneNumberHeadLbl) {
        _phoneNumberHeadLbl = [[UILabel alloc] init];
        _phoneNumberHeadLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        _phoneNumberHeadLbl.textColor = [UIColor blackColor];
    }
    return _phoneNumberHeadLbl;
}
- (UILabel *)phoneNumberContentLbl{
    if (!_phoneNumberContentLbl) {
        _phoneNumberContentLbl = [[UILabel alloc] init];
        _phoneNumberContentLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:16];
        _phoneNumberContentLbl.textColor = [UIColor blueColor];
    }
    return _phoneNumberContentLbl;
}
- (UILabel *)emailHeadLbl{
    if (!_emailHeadLbl) {
        _emailHeadLbl = [[UILabel alloc] init];
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
    }
    return _emailContentLbl;
}
@end
