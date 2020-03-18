//
//  EAClockTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAClockTableViewCell.h"
#import "EAsodePlanSaveModel.h"

@interface EAClockTableViewCell()
@property(nonatomic, strong)UILabel *EAremindLabel;//戒酒提醒
@property(nonatomic, strong)UIButton *EAtargetButton;//目标
@property(nonatomic, strong)UIButton *EAclockInButton;//打卡
@end
@implementation EAClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.EAremindLabel];
        [self.contentView addSubview:self.EAtargetButton];
        [self.contentView addSubview:self.EAclockInButton];
        
        [self.EAremindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(24);
            make.trailing.equalTo(self.contentView).offset(-24);
            make.top.equalTo(self.contentView).offset(100);
            make.height.mas_equalTo(200);
        }];
        [self.EAtargetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(100);
            make.top.equalTo(self.EAremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
        }];
        [self.EAclockInButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-100);
            make.top.equalTo(self.EAremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
            make.bottom.equalTo(self.contentView).offset(-100);
        }];
    }
    return self;
}
- (void)setEAmodel:(EAsodePlanSaveModel *)EAmodel{
    _EAmodel = EAmodel;
    self.EAremindLabel.text = [NSString stringWithFormat:@"%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"已经", nil),_EAmodel.EAcumulativeNubDays,NSLocalizedString(@"天~", nil),NSLocalizedString(@"少喝", nil),_EAmodel.EAaccumulativeBot,NSLocalizedString(@"瓶苏打水", nil),NSLocalizedString(@"累计节省", nil),_EAmodel.EAcumulativeAmount,NSLocalizedString(@"元", nil)];
}
#pragma mark - 按钮点击事件
- (void)EAbtnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.EAselectIndex = 0;
    }else if (sender.tag == 101){
        self.EAselectIndex = 1;
    }
    if (self.EAClockCellB) {
        self.EAClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)EAremindLabel{
    if (!_EAremindLabel) {
        _EAremindLabel = [[UILabel alloc] init];
        _EAremindLabel.layer.cornerRadius = 16.0f;
        _EAremindLabel.layer.masksToBounds = YES;
        _EAremindLabel.textColor = [UIColor darkGrayColor];
        _EAremindLabel.font = [UIFont systemFontOfSize:20];
        _EAremindLabel.numberOfLines = 0;
        _EAremindLabel.backgroundColor = [UIColor orangeColor];
        _EAremindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _EAremindLabel;
}
- (UIButton *)EAtargetButton{
    if (!_EAtargetButton) {
        _EAtargetButton = [[UIButton alloc] init];
        _EAtargetButton.layer.cornerRadius = 12.0f;
        _EAtargetButton.layer.masksToBounds = YES;
        [_EAtargetButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        _EAtargetButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_EAtargetButton setBackgroundColor:[UIColor purpleColor]];
        _EAtargetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_EAtargetButton setTitle:NSLocalizedString(@"目标", nil) forState:UIControlStateNormal];
        _EAtargetButton.tag = 100;
        [_EAtargetButton addTarget:self action:@selector(EAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EAtargetButton;
}
- (UIButton *)EAclockInButton{
    if (!_EAclockInButton) {
        _EAclockInButton = [[UIButton alloc] init];
        _EAclockInButton.layer.cornerRadius = 12.0f;
        _EAclockInButton.layer.masksToBounds = YES;
        [_EAclockInButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        _EAclockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_EAclockInButton setBackgroundColor:[UIColor blueColor]];
        _EAclockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_EAclockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _EAclockInButton.tag = 101;
        [_EAclockInButton addTarget:self action:@selector(EAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EAclockInButton;
}
@end
