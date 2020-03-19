//
//  AFClockTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AFClockTableViewCell.h"
#import "AFgamePlanSaveModel.h"

@interface AFClockTableViewCell()
@property(nonatomic, strong)UILabel *AFremindLabel;//戒除游戏
@property(nonatomic, strong)UIButton *AFtargetButton;//目标
@property(nonatomic, strong)UIButton *AFclockInButton;//打卡
@end
@implementation AFClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AFH_Color(44, 77, 93, 1);
        [self.contentView addSubview:self.AFremindLabel];
        [self.contentView addSubview:self.AFtargetButton];
        [self.contentView addSubview:self.AFclockInButton];
        
        [self.AFremindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(80);
            make.height.mas_equalTo(260);
        }];
        [self.AFtargetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(100);
            make.top.equalTo(self.AFremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
        }];
        [self.AFclockInButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-100);
            make.top.equalTo(self.AFremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
            make.bottom.equalTo(self.contentView).offset(-100);
        }];
    }
    return self;
}
- (void)setAFmodel:(AFgamePlanSaveModel *)AFmodel{
    _AFmodel = AFmodel;
    self.AFremindLabel.text = [NSString stringWithFormat:@"%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"已经", nil),_AFmodel.AFcumulativeNubDays,NSLocalizedString(@"天~", nil),NSLocalizedString(@"少玩", nil),_AFmodel.AFaccumulativeGames,NSLocalizedString(@"次游戏", nil),NSLocalizedString(@"累计节省", nil),_AFmodel.AFcumulativeAmount,NSLocalizedString(@"小时", nil)];
}
#pragma mark - 按钮点击事件
- (void)AFbtnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.AFselectIndex = 0;
    }else if (sender.tag == 101){
        self.AFselectIndex = 1;
    }
    if (self.AFClockCellB) {
        self.AFClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)AFremindLabel{
    if (!_AFremindLabel) {
        _AFremindLabel = [[UILabel alloc] init];
        _AFremindLabel.backgroundColor = AFH_Color(24, 50, 62, 1);
        _AFremindLabel.layer.cornerRadius = 32.0f;
        _AFremindLabel.layer.masksToBounds = YES;
        _AFremindLabel.layer.borderColor = [UIColor blueColor].CGColor;
        _AFremindLabel.layer.borderWidth = 1.0f;
        _AFremindLabel.textColor = [UIColor redColor];
        _AFremindLabel.font = [UIFont systemFontOfSize:20];
        _AFremindLabel.numberOfLines = 0;
        _AFremindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _AFremindLabel;
}
- (UIButton *)AFtargetButton{
    if (!_AFtargetButton) {
        _AFtargetButton = [[UIButton alloc] init];
        _AFtargetButton.backgroundColor = AFH_Color(24, 50, 62, 1);
        _AFtargetButton.layer.cornerRadius = 8.0f;
        _AFtargetButton.layer.masksToBounds = YES;
        _AFtargetButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AFtargetButton.layer.borderWidth = 1.0f;
        [_AFtargetButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _AFtargetButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _AFtargetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AFtargetButton setTitle:NSLocalizedString(@"目标", nil) forState:UIControlStateNormal];
        _AFtargetButton.tag = 100;
        [_AFtargetButton addTarget:self action:@selector(AFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFtargetButton;
}
- (UIButton *)AFclockInButton{
    if (!_AFclockInButton) {
        _AFclockInButton = [[UIButton alloc] init];
        _AFclockInButton.backgroundColor = AFH_Color(24, 50, 62, 1);
        _AFclockInButton.layer.cornerRadius = 8.0f;
        _AFclockInButton.layer.masksToBounds = YES;
        _AFclockInButton.layer.borderColor = [UIColor grayColor].CGColor;
        _AFclockInButton.layer.borderWidth = 1.0f;
        [_AFclockInButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _AFclockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _AFclockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AFclockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _AFclockInButton.tag = 101;
        [_AFclockInButton addTarget:self action:@selector(AFbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AFclockInButton;
}
@end
