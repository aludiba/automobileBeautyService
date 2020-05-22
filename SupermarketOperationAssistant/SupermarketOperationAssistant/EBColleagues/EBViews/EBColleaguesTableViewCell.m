//
//  EBColleaguesTableViewCell.m
//  SupermarketOperationAssistant
//
//  Created by 褚红彪 on 2020/5/22.
//  Copyright © 2020 HBC. All rights reserved.
//

#import "EBColleaguesTableViewCell.h"
#import "EBColleaguesModel.h"
#import "EBColleaguesViewController.h"
@interface EBColleaguesTableViewCell()
@property(nonatomic, strong)UILabel *EBnameTitleLbl;//姓名标题
@property(nonatomic, strong)UILabel *EBnameContentLbl;//姓名内容
@property(nonatomic, strong)UILabel *EBpositionTitleLbl;//职位标题
@property(nonatomic, strong)UILabel *EBpositionContentLbl;//职位内容
@property(nonatomic, strong)UILabel *EBwageTitleLbl;//工资标题
@property(nonatomic, strong)UILabel *EBwageContentLbl;//工资内容
@property(nonatomic, strong)UILabel *EBentrytimeTitleLbl;//入职时间标题
@property(nonatomic, strong)UILabel *EBentrytimeContentLbl;//入职时间内容
@property(nonatomic, strong)UIButton *EBdeleteBtn;//删除按钮
@property(nonatomic, strong)UIView *EBLine;//底线
@end
@implementation EBColleaguesTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.EBnameTitleLbl];
        [self.contentView addSubview:self.EBnameContentLbl];
        [self.contentView addSubview:self.EBpositionTitleLbl];
        [self.contentView addSubview:self.EBpositionContentLbl];
        [self.contentView addSubview:self.EBwageTitleLbl];
        [self.contentView addSubview:self.EBwageContentLbl];
        [self.contentView addSubview:self.EBentrytimeTitleLbl];
        [self.contentView addSubview:self.EBentrytimeContentLbl];
        [self.contentView addSubview:self.EBdeleteBtn];
        [self.contentView addSubview:self.EBLine];
        
        [self.EBnameTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.contentView).offset(12); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EBnameContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBnameTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBpositionTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBnameContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EBpositionContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBpositionTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBwageTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBpositionContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EBwageContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBwageTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBentrytimeTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBwageContentLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(18);
        }];
        [self.EBentrytimeContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBentrytimeTitleLbl.mas_bottom).offset(5); make.leading.equalTo(self.contentView).offset(32);
            make.trailing.equalTo(self.contentView).offset(-42);
            make.height.mas_equalTo(21);
        }];
        [self.EBdeleteBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.EBentrytimeContentLbl.mas_bottom).offset(12);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
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
- (void)setEBColleaguesmodel:(EBColleaguesModel *)EBColleaguesmodel{
    _EBColleaguesmodel = EBColleaguesmodel;
    self.EBnameContentLbl.text = _EBColleaguesmodel.EBname;
    self.EBpositionContentLbl.text = _EBColleaguesmodel.EBposition;
    self.EBwageContentLbl.text = _EBColleaguesmodel.EBwage;
    self.EBentrytimeContentLbl.text = _EBColleaguesmodel.EBentrytime;
}
- (void)EBdelete:(UIButton *)EBdeleteBtn{
    UIAlertController *EBalertVC = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"提醒", nil) message:NSLocalizedString(@"请先登录", nil) preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *EEBancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"取消", nil) style:UIAlertActionStyleCancel handler:nil];
    UIAlertAction *EBsureAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"确定", nil) style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        AVObject *EBdiary = [AVObject objectWithClassName:@"EBColleagues" objectId:self.EBColleaguesmodel.EBobjectId];
        __weak typeof(self) weakSelf = self;
        [EBdiary deleteInBackgroundWithBlock:^(BOOL isSuccessful, NSError *error) {
        if (isSuccessful) {
             //删除成功后的动作
            [MBProgressHUD EBshowReminderText:NSLocalizedString(@"删除成功", nil)];
            if (weakSelf.EBeditBlock) {
                weakSelf.EBeditBlock(self);
            }
        }else {
            [MBProgressHUD EBshowReminderText:NSLocalizedString(@"请稍后重试", nil)];
        }
        }];
    }];
    [EBalertVC addAction:EEBancelAction];
    [EBalertVC addAction:EBsureAction];
    [self.EBsuperVC presentViewController:EBalertVC animated:YES completion:nil];
}
#pragma mark - 属性懒加载
- (UILabel *)EBnameTitleLbl{
    if (!_EBnameTitleLbl) {
        _EBnameTitleLbl = [[UILabel alloc] init];
        _EBnameTitleLbl.textColor = [UIColor orangeColor];
        _EBnameTitleLbl.font = [UIFont systemFontOfSize:15];
        _EBnameTitleLbl.text = NSLocalizedString(@"姓名:", nil);
    }
    return _EBnameTitleLbl;
}
- (UILabel *)EBnameContentLbl{
    if (!_EBnameContentLbl) {
        _EBnameContentLbl = [[UILabel alloc] init];
        _EBnameContentLbl.textColor = [UIColor darkGrayColor];
        _EBnameContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _EBnameContentLbl;
}
- (UILabel *)EBpositionTitleLbl{
    if (!_EBpositionTitleLbl) {
        _EBpositionTitleLbl = [[UILabel alloc] init];
        _EBpositionTitleLbl.textColor = [UIColor orangeColor];
        _EBpositionTitleLbl.font = [UIFont systemFontOfSize:15];
        _EBpositionTitleLbl.text = NSLocalizedString(@"职位:", nil);
    }
    return _EBpositionTitleLbl;
}
- (UILabel *)EBpositionContentLbl{
    if (!_EBpositionContentLbl) {
        _EBpositionContentLbl = [[UILabel alloc] init];
        _EBpositionContentLbl.textColor = [UIColor darkGrayColor];
        _EBpositionContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _EBpositionContentLbl;
}
- (UILabel *)EBwageTitleLbl{
    if (!_EBwageTitleLbl) {
        _EBwageTitleLbl = [[UILabel alloc] init];
        _EBwageTitleLbl.textColor = [UIColor orangeColor];
        _EBwageTitleLbl.font = [UIFont systemFontOfSize:15];
        _EBwageTitleLbl.text = NSLocalizedString(@"工资:", nil);
    }
    return _EBwageTitleLbl;
}
- (UILabel *)EBwageContentLbl{
    if (!_EBwageContentLbl) {
        _EBwageContentLbl = [[UILabel alloc] init];
        _EBwageContentLbl.textColor = [UIColor darkGrayColor];
        _EBwageContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _EBwageContentLbl;
}
- (UILabel *)EBentrytimeTitleLbl{
    if (!_EBentrytimeTitleLbl) {
        _EBentrytimeTitleLbl = [[UILabel alloc] init];
        _EBentrytimeTitleLbl.textColor = [UIColor orangeColor];
        _EBentrytimeTitleLbl.font = [UIFont systemFontOfSize:15];
        _EBentrytimeTitleLbl.text = NSLocalizedString(@"入职时间:", nil);
    }
    return _EBentrytimeTitleLbl;
}
- (UILabel *)EBentrytimeContentLbl{
    if (!_EBentrytimeContentLbl) {
        _EBentrytimeContentLbl = [[UILabel alloc] init];
        _EBentrytimeContentLbl.textColor = [UIColor darkGrayColor];
        _EBentrytimeContentLbl.font = [UIFont systemFontOfSize:18];
    }
    return _EBentrytimeContentLbl;
}
- (UIButton *)EBdeleteBtn{
    if (!_EBdeleteBtn) {
        _EBdeleteBtn = [[UIButton alloc] init];
        _EBdeleteBtn.backgroundColor = [UIColor systemOrangeColor];
        _EBdeleteBtn.layer.cornerRadius = 8.0f;
        _EBdeleteBtn.layer.masksToBounds = YES;
        [_EBdeleteBtn setTitle:NSLocalizedString(@"删除", nil) forState:UIControlStateNormal];
        [_EBdeleteBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
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
