//
//  PBScorecardOperationTableViewCell.m
//  PocketBasketballScore
//
//  Created by bykj on 2019/10/24.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PBScorecardOperationTableViewCell.h"
@interface PBScorecardOperationTableViewCell()
@property(nonatomic, strong)UIButton *PBResetButton;//重新计时、计分按钮
@property(nonatomic, strong)UIButton *PBStartButton;//开始按钮
@property(nonatomic, strong)UIButton *PBChangeButton;//交换按钮
@property(nonatomic, strong)UIButton *PBSaveButton;//保存按钮

@end
@implementation PBScorecardOperationTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.PBResetButton];
        [self.contentView addSubview:self.PBStartButton];
        [self.contentView addSubview:self.PBChangeButton];
        [self.contentView addSubview:self.PBSaveButton];
        
        [self.PBResetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PBWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
            make.bottom.equalTo(self.contentView).offset(-20);

        }];
        [self.PBStartButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PBResetButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PBWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        [self.PBChangeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PBStartButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PBWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
        [self.PBSaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PBChangeButton.mas_trailing).offset(20);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PBWIDTH - 100) / 4);
            make.height.mas_equalTo(40);
        }];
    }
    return self;
}
#pragma mark - action
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        NSLog(@"重来~~~");
    }else if (sender.tag == 101){
        NSLog(@"开始~~~");
    }else if (sender.tag == 102){
        NSLog(@"交换~~~");
    }else if (sender.tag == 103){
        NSLog(@"保存~~~");
    }
}
#pragma mark - 属性懒加载
- (UIButton *)PBResetButton{
    if (!_PBResetButton) {
        _PBResetButton = [[UIButton alloc] init];
        _PBResetButton.tag = 100;
        _PBResetButton.backgroundColor = [UIColor systemYellowColor];
        [_PBResetButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PBResetButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PBResetButton.layer.cornerRadius = 10.0f;
        _PBResetButton.layer.masksToBounds = YES;
        [_PBResetButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PBResetButton setTitle:NSLocalizedString(@"重来", nil) forState:UIControlStateNormal];
    }
    return _PBResetButton;
}
- (UIButton *)PBStartButton{
    if (!_PBStartButton) {
        _PBStartButton = [[UIButton alloc] init];
        _PBStartButton.tag = 101;
        _PBStartButton.backgroundColor = [UIColor systemYellowColor];
        [_PBStartButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PBStartButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PBStartButton.layer.cornerRadius = 10.0f;
        _PBStartButton.layer.masksToBounds = YES;
        [_PBStartButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PBStartButton setTitle:NSLocalizedString(@"开始", nil) forState:UIControlStateNormal];
    }
    return _PBStartButton;
}
- (UIButton *)PBChangeButton{
    if (!_PBChangeButton) {
        _PBChangeButton = [[UIButton alloc] init];
        _PBChangeButton.tag = 102;
        _PBChangeButton.backgroundColor = [UIColor systemYellowColor];
        [_PBChangeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PBChangeButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PBChangeButton.layer.cornerRadius = 10.0f;
        _PBChangeButton.layer.masksToBounds = YES;
        [_PBChangeButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PBChangeButton setTitle:NSLocalizedString(@"交换", nil) forState:UIControlStateNormal];
    }
    return _PBChangeButton;
}
- (UIButton *)PBSaveButton{
    if (!_PBSaveButton) {
        _PBSaveButton = [[UIButton alloc] init];
        _PBSaveButton.tag = 103;
        _PBSaveButton.backgroundColor = [UIColor systemYellowColor];
        [_PBSaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PBSaveButton.titleLabel setFont:[UIFont systemFontOfSize:18]];
        _PBSaveButton.layer.cornerRadius = 10.0f;
        _PBSaveButton.layer.masksToBounds = YES;
        [_PBSaveButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_PBSaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
    }
    return _PBSaveButton;
}
@end
