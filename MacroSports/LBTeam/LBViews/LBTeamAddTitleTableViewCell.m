//
//  LBTeamAddTitleTableViewCell.m
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBTeamAddTitleTableViewCell.h"
@interface LBTeamAddTitleTableViewCell()<UITextFieldDelegate>
@property(nonatomic, strong)UILabel *LBTitleLbl;
@property(nonatomic, strong)UITextField *LBContentTextField;

@end
@implementation LBTeamAddTitleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self LBSetContentView];
        [self LBSetContentLayout];
    }
    return self;
}
#pragma mark - actions
- (void)LBSetContentView{
    self.contentView.backgroundColor = [UIColor systemGreenColor];
    [self.contentView addSubview:self.LBTitleLbl];
    [self.contentView addSubview:self.LBContentTextField];
}
- (void)LBSetContentLayout{
    [self.LBTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(16);
        make.width.mas_equalTo(90);
        make.centerY.equalTo(self.LBContentTextField);
        make.height.mas_equalTo(20);
    }];
    [self.LBContentTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.LBTitleLbl.mas_trailing).offset(3);
        make.trailing.equalTo(self.contentView).offset(-16);
        make.top.equalTo(self.contentView).offset(10);
        make.height.mas_equalTo(40);
        make.bottom.equalTo(self.contentView).offset(-10);
    }];
}
#pragma mark - 属性懒加载
- (UILabel *)LBTitleLbl{
    if (!_LBTitleLbl) {
        _LBTitleLbl = [[UILabel alloc] init];
        _LBTitleLbl.textColor = [UIColor blackColor];
        _LBTitleLbl.font = [UIFont systemFontOfSize:18];
        _LBTitleLbl.text = @"队伍名称：";
    }
    return _LBTitleLbl;
}
- (UITextField *)LBContentTextField{
    if (!_LBContentTextField) {
        _LBContentTextField = [[UITextField alloc] init];
        _LBContentTextField.placeholder = @"请输入队伍名称";
        _LBContentTextField.layer.cornerRadius = 4;
        _LBContentTextField.layer.masksToBounds = YES;
        _LBContentTextField.backgroundColor = [UIColor whiteColor];
        _LBContentTextField.textColor = [UIColor blackColor];
        _LBContentTextField.font = [UIFont systemFontOfSize:22];
        _LBContentTextField.delegate = self;
    }
    return _LBContentTextField;
}
@end
