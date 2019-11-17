//
//  AKClockTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AKClockTableViewCell.h"
#import "AKDrinkingPlanSaveModel.h"

@interface AKClockTableViewCell()
@property(nonatomic, strong)UILabel *remindLabel;//戒酒提醒
@property(nonatomic, strong)UIButton *targetButton;//目标
@property(nonatomic, strong)UIButton *clockInButton;//打卡
@end
@implementation AKClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.remindLabel];
        [self.contentView addSubview:self.targetButton];
        [self.contentView addSubview:self.clockInButton];
        
        [self.remindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(10);
            make.height.mas_equalTo(120);
        }];
        [self.targetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.remindLabel.mas_bottom).offset(15);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
        }];
        [self.clockInButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-64);
            make.top.equalTo(self.remindLabel.mas_bottom).offset(15);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(AKDrinkingPlanSaveModel *)model{
    _model = model;
    self.remindLabel.text = [NSString stringWithFormat:@"%@\n\n%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"亲爱的戒酒玩家", nil),NSLocalizedString(@"已经", nil),_model.cumulativeNumberDays,NSLocalizedString(@"天没喝酒了~", nil),NSLocalizedString(@"已经少喝", nil),_model.accumulativeBottle,NSLocalizedString(@"瓶酒", nil),NSLocalizedString(@"累计节省", nil),_model.cumulativeAmount,NSLocalizedString(@"元", nil)];
}
#pragma mark - 按钮点击事件
- (void)btnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.selectIndex = 0;
    }else if (sender.tag == 101){
        self.selectIndex = 1;
    }
    if (self.AKClockCellB) {
        self.AKClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)remindLabel{
    if (!_remindLabel) {
        _remindLabel = [[UILabel alloc] init];
        _remindLabel.textColor = [UIColor blackColor];
        _remindLabel.font = [UIFont systemFontOfSize:14];
        _remindLabel.numberOfLines = 0;
        [_remindLabel sizeToFit];
        _remindLabel.layer.cornerRadius = 8.0f;
        _remindLabel.layer.masksToBounds = YES;
        _remindLabel.layer.borderColor = [UIColor grayColor].CGColor;
        _remindLabel.layer.borderWidth = 1.0f;
        _remindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _remindLabel;
}
- (UIButton *)targetButton{
    if (!_targetButton) {
        _targetButton = [[UIButton alloc] init];
        _targetButton.layer.cornerRadius = 32.0f;
        _targetButton.layer.masksToBounds = YES;
        [_targetButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _targetButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_targetButton setBackgroundColor:[UIColor greenColor]];
        _targetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_targetButton setTitle:NSLocalizedString(@"目标", nil) forState:UIControlStateNormal];
        _targetButton.tag = 100;
        [_targetButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _targetButton;
}
- (UIButton *)clockInButton{
    if (!_clockInButton) {
        _clockInButton = [[UIButton alloc] init];
        _clockInButton.layer.cornerRadius = 32.0f;
        _clockInButton.layer.masksToBounds = YES;
        [_clockInButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _clockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_clockInButton setBackgroundColor:[UIColor greenColor]];
        _clockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_clockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _clockInButton.tag = 101;
        [_clockInButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _clockInButton;
}
@end
