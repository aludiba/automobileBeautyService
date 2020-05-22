//
//  EBProductInformationTableViewCell.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import "EBProductInformationTableViewCell.h"
#import "EBProductInformationModel.h"
#import "EBProductInformationViewController.h"
#import "EBPurchaseStatusModel.h"

@interface EBProductInformationTableViewCell()
@property(nonatomic, strong)UILabel *EBcategoryTitleLbl;//类别标题
@property(nonatomic, strong)UILabel *EBcategoryContentLbl;//类别内容
@property(nonatomic, strong)UILabel *EBdeliveryaddressTitleLbl;//数量标题
@property(nonatomic, strong)UILabel *EBdeliveryaddressContentLbl;//数量内容
@property(nonatomic, strong)UILabel *EBpurchasetimeTitleLbl;//购买时间标题
@property(nonatomic, strong)UILabel *EBpurchasetimeContentLbl;//购买时间内容
@property(nonatomic, strong)UIButton *EBdeleteBtn;//删除按钮
@property(nonatomic, strong)UIView *EBLine;//底线
@end
@implementation EBProductInformationTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.EBcategoryTitleLbl];
        [self.contentView addSubview:self.EBcategoryContentLbl];
        [self.contentView addSubview:self.EBdeliveryaddressTitleLbl];
        [self.contentView addSubview:self.EBdeliveryaddressContentLbl];
        [self.contentView addSubview:self.EBpurchasetimeTitleLbl];
        [self.contentView addSubview:self.EBpurchasetimeContentLbl];
        [self.contentView addSubview:self.EBdeleteBtn];
        [self.contentView addSubview:self.EBLine];
        
        [self.EBcategoryTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.contentView).offset(12); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EBcategoryContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBcategoryTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBdeliveryaddressTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBcategoryContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EBdeliveryaddressContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBdeliveryaddressTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBpurchasetimeTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBdeliveryaddressContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EBpurchasetimeContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBpurchasetimeTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBdeleteBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBpurchasetimeContentLbl.mas_bottom).offset(12);
            make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(40);
        }];
        [self.EBLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBdeleteBtn.mas_bottom).offset(11); make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - action
- (void)setEBProductInformationmodel:(EBProductInformationModel *)EBProductInformationmodel{
    _EBProductInformationmodel = EBProductInformationmodel;
    self.EBcategoryContentLbl.text = _EBProductInformationmodel.EBcategory;
    self.EBdeliveryaddressContentLbl.text = _EBProductInformationmodel.EBdeliveryaddress;
    self.EBpurchasetimeContentLbl.text = _EBProductInformationmodel.EBpurchasetime;
}
- (void)EBdelete:(UIButton *)EBdeleteBtn{
    UIAlertController *EBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *EEBancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *EBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        AVObject *EBdiary = [AVObject objectWithClassName:@"EBProductInformation" objectId:self.EBProductInformationmodel.EBobjectId];
        __weak typeof(self) weakSelf = self;
        [EBdiary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
             //删除成功后的动作
            [MBProgressHUD EBshowReminderText:@"删除成功"];
            if (self.EBeditBlock) {
                self.EBeditBlock(self);
            }
        }else {
            [MBProgressHUD EBshowReminderText:@"请稍后重试"];
        }
        }];
    }];
    [EBalertVC addAction:EEBancelAction];
    [EBalertVC addAction:EBsureAction];
    [self.EBsuperVC presentViewController:EBalertVC animated:YES completion:nil];
}
#pragma mark - 属性懒加载
- (UILabel *)EBcategoryTitleLbl{
    if (!_EBcategoryTitleLbl) {
        _EBcategoryTitleLbl = [[UILabel alloc] init];
        _EBcategoryTitleLbl.textColor = [UIColor orangeColor];
        _EBcategoryTitleLbl.font = [UIFont systemFontOfSize:15];
        _EBcategoryTitleLbl.text = @"类别:";
    }
    return _EBcategoryTitleLbl;
}
- (UILabel *)EBcategoryContentLbl{
    if (!_EBcategoryContentLbl) {
        _EBcategoryContentLbl = [[UILabel alloc] init];
        _EBcategoryContentLbl.textColor = [UIColor darkGrayColor];
        _EBcategoryContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _EBcategoryContentLbl;
}
- (UILabel *)EBdeliveryaddressTitleLbl{
    if (!_EBdeliveryaddressTitleLbl) {
        _EBdeliveryaddressTitleLbl = [[UILabel alloc] init];
        _EBdeliveryaddressTitleLbl.textColor = [UIColor orangeColor];
        _EBdeliveryaddressTitleLbl.font = [UIFont systemFontOfSize:15];
        _EBdeliveryaddressTitleLbl.text = @"交货地址:";
    }
    return _EBdeliveryaddressTitleLbl;
}
- (UILabel *)EBdeliveryaddressContentLbl{
    if (!_EBdeliveryaddressContentLbl) {
        _EBdeliveryaddressContentLbl = [[UILabel alloc] init];
        _EBdeliveryaddressContentLbl.textColor = [UIColor darkGrayColor];
        _EBdeliveryaddressContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _EBdeliveryaddressContentLbl;
}
- (UILabel *)EBpurchasetimeTitleLbl{
    if (!_EBpurchasetimeTitleLbl) {
        _EBpurchasetimeTitleLbl = [[UILabel alloc] init];
        _EBpurchasetimeTitleLbl.textColor = [UIColor orangeColor];
        _EBpurchasetimeTitleLbl.font = [UIFont systemFontOfSize:15];
        _EBpurchasetimeTitleLbl.text = @"购买时间:";
    }
    return _EBpurchasetimeTitleLbl;
}
- (UILabel *)EBpurchasetimeContentLbl{
    if (!_EBpurchasetimeContentLbl) {
        _EBpurchasetimeContentLbl = [[UILabel alloc] init];
        _EBpurchasetimeContentLbl.textColor = [UIColor darkGrayColor];
        _EBpurchasetimeContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _EBpurchasetimeContentLbl;
}
- (UIButton *)EBdeleteBtn{
    if (!_EBdeleteBtn) {
        _EBdeleteBtn = [[UIButton alloc] init];
        _EBdeleteBtn.backgroundColor = [UIColor systemRedColor];
        _EBdeleteBtn.layer.cornerRadius = 4.0f;
        _EBdeleteBtn.layer.masksToBounds = YES;
        [_EBdeleteBtn setTitle:@"删除" forState:UIControlStateNormal];
        [_EBdeleteBtn setTitleColor:[UIColor systemOrangeColor] forState:UIControlStateNormal];
        _EBdeleteBtn.titleLabel.font = [UIFont systemFontOfSize:17];
        [_EBdeleteBtn addTarget:self action:@selector(EBdelete:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EBdeleteBtn;
}
- (UIView *)EBLine{
    if (!_EBLine) {
        _EBLine = [[UIView alloc] init];
        _EBLine.backgroundColor = EBH_Color(242, 242, 242, 1);
    }
    return _EBLine;
}

@end
