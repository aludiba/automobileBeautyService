//
//  EBPurchaseStatusListTableViewCell.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/21.
//  Copyright © 2020 HEB. All rights reserved.
//

#import "EBPurchaseStatusListTableViewCell.h"
#import "EBPurchaseStatusModel.h"
#import "EBPurchaseStatusViewController.h"
@interface EBPurchaseStatusListTableViewCell()
@property(nonatomic, strong)UILabel *EEBategoryTitleLbl;//类别标题
@property(nonatomic, strong)UILabel *EEBategoryContentLbl;//类别内容
@property(nonatomic, strong)UILabel *EBquantityTitleLbl;//数量标题
@property(nonatomic, strong)UILabel *EBquantityContentLbl;//数量内容
@property(nonatomic, strong)UILabel *EBpurchasetimeTitleLbl;//购买时间标题
@property(nonatomic, strong)UILabel *EBpurchasetimeContentLbl;//购买时间内容
@property(nonatomic, strong)UIButton *EBdeleteBtn;//删除按钮
@property(nonatomic, strong)UIView *EBLine;//底线
@end
@implementation EBPurchaseStatusListTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.EEBategoryTitleLbl];
        [self.contentView addSubview:self.EEBategoryContentLbl];
        [self.contentView addSubview:self.EBquantityTitleLbl];
        [self.contentView addSubview:self.EBquantityContentLbl];
        [self.contentView addSubview:self.EBpurchasetimeTitleLbl];
        [self.contentView addSubview:self.EBpurchasetimeContentLbl];
        [self.contentView addSubview:self.EBdeleteBtn];
        [self.contentView addSubview:self.EBLine];
        
        [self.EEBategoryTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.contentView).offset(12); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EEBategoryContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EEBategoryTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBquantityTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EEBategoryContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EBquantityContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBquantityTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBpurchasetimeTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBquantityContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EBpurchasetimeContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBpurchasetimeTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBdeleteBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(12);
            make.leading.equalTo(self.EEBategoryTitleLbl.mas_trailing).offset(1);
            make.trailing.equalTo(self.contentView).offset(-3);
            make.height.mas_equalTo(40);
        }];
        [self.EBLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBpurchasetimeContentLbl.mas_bottom).offset(11); make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(1);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return self;
}
#pragma mark - action
- (void)setEBPurchaseStatusmodel:(EBPurchaseStatusModel *)EBPurchaseStatusmodel{
    _EBPurchaseStatusmodel = EBPurchaseStatusmodel;
    self.EEBategoryContentLbl.text = _EBPurchaseStatusmodel.EBcategory;
    self.EBquantityContentLbl.text = _EBPurchaseStatusmodel.EBquantity;
    self.EBpurchasetimeContentLbl.text = _EBPurchaseStatusmodel.EBpurchasetime;
}
- (void)EBdelete:(UIButton *)EBdeleteBtn{
    UIAlertController *EBalertVC = [UIAlertController alertControllerWithTitle:@"提醒" message:@"请先登录" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *EEBancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *EBsureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        AVObject *EBdiary = [AVObject objectWithClassName:@"EBPurchaseStatus" objectId:self.EBPurchaseStatusmodel.EBobjectId];
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
- (UILabel *)EEBategoryTitleLbl{
    if (!_EEBategoryTitleLbl) {
        _EEBategoryTitleLbl = [[UILabel alloc] init];
        _EEBategoryTitleLbl.textColor = [UIColor orangeColor];
        _EEBategoryTitleLbl.font = [UIFont systemFontOfSize:15];
        _EEBategoryTitleLbl.text = NSLocalizedString(@"类别:", nil);
    }
    return _EEBategoryTitleLbl;
}
- (UILabel *)EEBategoryContentLbl{
    if (!_EEBategoryContentLbl) {
        _EEBategoryContentLbl = [[UILabel alloc] init];
        _EEBategoryContentLbl.textColor = [UIColor darkGrayColor];
        _EEBategoryContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _EEBategoryContentLbl;
}
- (UILabel *)EBquantityTitleLbl{
    if (!_EBquantityTitleLbl) {
        _EBquantityTitleLbl = [[UILabel alloc] init];
        _EBquantityTitleLbl.textColor = [UIColor orangeColor];
        _EBquantityTitleLbl.font = [UIFont systemFontOfSize:15];
        _EBquantityTitleLbl.text = NSLocalizedString(@"数量:", nil);
    }
    return _EBquantityTitleLbl;
}
- (UILabel *)EBquantityContentLbl{
    if (!_EBquantityContentLbl) {
        _EBquantityContentLbl = [[UILabel alloc] init];
        _EBquantityContentLbl.textColor = [UIColor darkGrayColor];
        _EBquantityContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _EBquantityContentLbl;
}
- (UILabel *)EBpurchasetimeTitleLbl{
    if (!_EBpurchasetimeTitleLbl) {
        _EBpurchasetimeTitleLbl = [[UILabel alloc] init];
        _EBpurchasetimeTitleLbl.textColor = [UIColor orangeColor];
        _EBpurchasetimeTitleLbl.font = [UIFont systemFontOfSize:15];
        _EBpurchasetimeTitleLbl.text = NSLocalizedString(@"购买时间:", nil);
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
        _EBdeleteBtn.backgroundColor = EBH_Color(242, 242, 242, 1);
        _EBdeleteBtn.layer.cornerRadius = 19.0f;
        _EBdeleteBtn.layer.maskedCorners = YES;
        [_EBdeleteBtn setTitle:NSLocalizedString(@"删除", nil) forState:UIControlStateNormal];
        [_EBdeleteBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
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
