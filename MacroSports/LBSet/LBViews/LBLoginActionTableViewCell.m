//
//  LBLoginActionTableViewCell.m
//  MacroSports
//
//  Created by user on 2020/7/7.
//  Copyright © 2020 macro. All rights reserved.
//

#import "LBLoginActionTableViewCell.h"
@interface LBLoginActionTableViewCell()
@property(nonatomic, strong)UIButton *LBLoginBtn;
@property(nonatomic, strong)UIButton *LBRegisteredBtn;
@end
@implementation LBLoginActionTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self LBSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)LBSetContentView{
    [self.contentView addSubview:self.LBLoginBtn];
    [self.contentView addSubview:self.LBRegisteredBtn];
    
    [self.LBLoginBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(64);
        make.trailing.equalTo(self.contentView).offset(-64);
        make.top.equalTo(self.contentView).offset(30);
        make.height.mas_equalTo(44);
    }];
    [self.LBRegisteredBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView).offset(64);
        make.trailing.equalTo(self.contentView).offset(-64);
        make.top.equalTo(self.LBLoginBtn.mas_bottom).offset(16);
        make.height.mas_equalTo(44);
        make.bottom.equalTo(self.contentView).offset(-30);
    }];
}
- (void)LBBtnAction:(UIButton *)sender{
    self.LBIndex = sender.tag;
    if (self.LBLoginActionB) {
        self.LBLoginActionB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)LBLoginBtn{
    if (!_LBLoginBtn) {
        _LBLoginBtn = [[UIButton alloc] init];
        _LBLoginBtn.tag = 99;
        [_LBLoginBtn setTitle:@"登录" forState:UIControlStateNormal];
        [_LBLoginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_LBLoginBtn.titleLabel setFont:[UIFont systemFontOfSize:22]];
        _LBLoginBtn.backgroundColor = [UIColor cyanColor];
        _LBLoginBtn.layer.cornerRadius = 6.0f;
        _LBLoginBtn.layer.masksToBounds = YES;
        [_LBLoginBtn addTarget:self action:@selector(LBBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBLoginBtn;
}
- (UIButton *)LBRegisteredBtn{
    if (!_LBRegisteredBtn) {
        _LBRegisteredBtn = [[UIButton alloc] init];
        _LBRegisteredBtn.tag = 100;
        [_LBRegisteredBtn setTitle:@"注册" forState:UIControlStateNormal];
        [_LBRegisteredBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
        [_LBRegisteredBtn.titleLabel setFont:[UIFont systemFontOfSize:22]];
        _LBRegisteredBtn.backgroundColor = [UIColor greenColor];
        _LBRegisteredBtn.layer.cornerRadius = 6.0f;
        _LBRegisteredBtn.layer.masksToBounds = YES;
        [_LBRegisteredBtn addTarget:self action:@selector(LBBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _LBRegisteredBtn;
}
@end
