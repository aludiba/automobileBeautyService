//
//  LBLoginTextCell.m
//  MacroSports
//
//  Created by user on 2020/7/7.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBLoginTextCell.h"
#import "LBLoginModel.h"
#import "NSString+LB.h"
@interface LBLoginTextCell ()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *LBTitleLbl;
@property(nonatomic, strong)UITextField *LBTextFld;
@property(nonatomic, strong)UIView *LBLine;
@end

@implementation LBLoginTextCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self LBSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)LBSetContentView{
    [self.contentView addSubview:self.LBTitleLbl];
    [self.contentView addSubview:self.LBTextFld];
    [self.contentView addSubview:self.LBLine];
    
    [self.LBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(64);
        make.centerY.equalTo(self.contentView);
        make.width.mas_equalTo(60);
        make.height.mas_equalTo(20);
    }];
    [self.LBTextFld mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.LBTitleLbl.mas_trailing).offset(16);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.top.equalTo(self.contentView).offset(30);
        make.height.mas_equalTo(22);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
    [self.LBLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(32);
        make.bottom.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView).offset(-32);
        make.height.mas_equalTo(1);
    }];
}
- (void)setLBModel:(LBLoginModel *)LBModel{
    _LBModel = LBModel;
    if (self.LBlogintype == LBLoginTypeAccount) {
        self.LBTextFld.text = _LBModel.LBAccount;
        self.LBTitleLbl.text = _LBModel.LBAccountTitle;
        self.LBTextFld.placeholder = _LBModel.LBAccountDefault;
    }else{
        self.LBTextFld.text = _LBModel.LBPassword;
        self.LBTitleLbl.text = _LBModel.LBPasswordTitle;
        self.LBTextFld.placeholder = _LBModel.LBPasswordDefault;
    }
}
#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    NSString *LBstring = textField.text;
    LBstring = [LBstring LBremoveSpaceAndNewline];
    if (self.LBlogintype == LBLoginTypeAccount) {
        self.LBModel.LBAccount = LBstring;
    }else{
        self.LBModel.LBPassword = LBstring;
    }
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    NSString *LBstring = textField.text;
    LBstring = [LBstring LBremoveSpaceAndNewline];
    if (self.LBlogintype == LBLoginTypeAccount) {
        self.LBModel.LBAccount = LBstring;
    }else{
        self.LBModel.LBPassword = LBstring;
    }
}
#pragma mark - 属性懒加载
- (UILabel *)LBTitleLbl{
    if (!_LBTitleLbl) {
        _LBTitleLbl = [[UILabel alloc] init];
        _LBTitleLbl.textColor = [UIColor blackColor];
        _LBTitleLbl.font = [UIFont systemFontOfSize:18];
    }
    return _LBTitleLbl;
}
- (UITextField *)LBTextFld{
    if (!_LBTextFld) {
        _LBTextFld = [[UITextField alloc] init];
        _LBTextFld.clearButtonMode = UITextFieldViewModeWhileEditing;
        _LBTextFld.delegate = self;
        _LBTextFld.textColor = [UIColor blackColor];
        _LBTextFld.font = [UIFont systemFontOfSize:20];
    }
    return _LBTextFld;
}
- (UIView *)LBLine{
    if (!_LBLine) {
        _LBLine = [[UIView alloc] init];
        _LBLine.backgroundColor = LBH_Color(242, 242, 242, 242);
    }
    return _LBLine;
}
@end
