//
//  AJClockTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJClockTableViewCell.h"
#import "AJgamePlanSaveModel.h"

@interface AJClockTableViewCell()
@property(nonatomic, strong)UILabel *AJremindLabel;//戒除游戏
@property(nonatomic, strong)UIButton *AJtargetButton;//目标
@property(nonatomic, strong)UIButton *AJclockInButton;//打卡
@end
@implementation AJClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AJH_Color(44, 77, 93, 1);
        [self.contentView addSubview:self.AJremindLabel];
        [self.contentView addSubview:self.AJtargetButton];
        [self.contentView addSubview:self.AJclockInButton];
        
        [self.AJremindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(80);
            make.height.mas_equalTo(260);
        }];
        [self.AJtargetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(100);
            make.top.equalTo(self.AJremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
        }];
        [self.AJclockInButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-100);
            make.top.equalTo(self.AJremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
            make.bottom.equalTo(self.contentView).offset(-100);
        }];
    }
    return self;
}
- (void)setAJmodel:(AJgamePlanSaveModel *)AJmodel{
    _AJmodel = AJmodel;
    self.AJremindLabel.text = [NSString stringWithFormat:@"%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"已经", nil),_AJmodel.AJcumulativeNubDays,NSLocalizedString(@"天~", nil),NSLocalizedString(@"少玩", nil),_AJmodel.AJaccumulativeGames,NSLocalizedString(@"次游戏", nil),NSLocalizedString(@"累计节省", nil),_AJmodel.AJcumulativeAmount,NSLocalizedString(@"小时", nil)];
}
#pragma mark - 按钮点击事件
- (void)AJbtnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.AJselectIndex = 0;
    }else if (sender.tag == 101){
        self.AJselectIndex = 1;
    }
    if (self.AJClockCellB) {
        self.AJClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)AJremindLabel{
    if (!_AJremindLabel) {
        _AJremindLabel = [[UILabel alloc] init];
        _AJremindLabel.backgroundColor = AJH_Color(24, 50, 62, 1);
        _AJremindLabel.layer.cornerRadius = 32.0f;
        _AJremindLabel.layer.masksToBounds = YES;
        _AJremindLabel.layer.borderColor = [UIColor blueColor].CGColor;
        _AJremindLabel.layer.borderWidth = 1.0f;
        _AJremindLabel.textColor = [UIColor redColor];
        _AJremindLabel.font = [UIFont systemFontOfSize:20];
        _AJremindLabel.numberOfLines = 0;
        _AJremindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _AJremindLabel;
}
- (UIButton *)AJtargetButton{
    if (!_AJtargetButton) {
        _AJtargetButton = [[UIButton alloc] init];
        _AJtargetButton.backgroundColor = AJH_Color(24, 50, 62, 1);
        _AJtargetButton.layer.cornerRadius = 8.0f;
        _AJtargetButton.layer.masksToBounds = YES;
        _AJtargetButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AJtargetButton.layer.borderWidth = 1.0f;
        [_AJtargetButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _AJtargetButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _AJtargetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AJtargetButton setTitle:NSLocalizedString(@"目标", nil) forState:UIControlStateNormal];
        _AJtargetButton.tag = 100;
        [_AJtargetButton addTarget:self action:@selector(AJbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AJtargetButton;
}
- (UIButton *)AJclockInButton{
    if (!_AJclockInButton) {
        _AJclockInButton = [[UIButton alloc] init];
        _AJclockInButton.backgroundColor = AJH_Color(24, 50, 62, 1);
        _AJclockInButton.layer.cornerRadius = 8.0f;
        _AJclockInButton.layer.masksToBounds = YES;
        _AJclockInButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AJclockInButton.layer.borderWidth = 1.0f;
        [_AJclockInButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _AJclockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _AJclockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AJclockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _AJclockInButton.tag = 101;
        [_AJclockInButton addTarget:self action:@selector(AJbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AJclockInButton;
}
@end
