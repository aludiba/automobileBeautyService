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
@end
@implementation stbaAddressBookTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.nameHeadView];
        [self.contentView addSubview:self.genderHeadLbl];
        [self.contentView addSubview:self.genderContentLbl];
    }
    return self;
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
        _genderHeadLbl.text = @"性别";
        _genderHeadLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _genderHeadLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
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
        _phoneNumberHeadLbl.text = @"手机";
        _phoneNumberHeadLbl.font = [UIFont fontWithName:@"PingFangSC-Regular" size:14];
        _phoneNumberHeadLbl.textColor = [UIColor colorWithRed:128/255.0 green:128/255.0 blue:143/255.0 alpha:1/1.0];
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
@end
