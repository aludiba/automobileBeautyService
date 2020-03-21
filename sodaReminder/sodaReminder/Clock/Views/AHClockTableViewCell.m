//
//  AHClockTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHClockTableViewCell.h"
#import "AHsodePlanSaveModel.h"

@interface AHClockTableViewCell()
@property(nonatomic, strong)UILabel *AHremindLabel;//戒酒提醒
@property(nonatomic, strong)UIButton *AHtargetButton;//目标
@property(nonatomic, strong)UIButton *AHclockInButton;//打卡
@end
@implementation AHClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.AHremindLabel];
        [self.contentView addSubview:self.AHtargetButton];
        [self.contentView addSubview:self.AHclockInButton];
        
        [self.AHremindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(24);
            make.trailing.equalTo(self.contentView).offset(-24);
            make.top.equalTo(self.contentView).offset(100);
            make.height.mas_equalTo(200);
        }];
        [self.AHtargetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(100);
            make.top.equalTo(self.AHremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
        }];
        [self.AHclockInButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-100);
            make.top.equalTo(self.AHremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
            make.bottom.equalTo(self.contentView).offset(-100);
        }];
    }
    return self;
}
- (void)setAHmodel:(AHsodePlanSaveModel *)AHmodel{
    _AHmodel = AHmodel;
    self.AHremindLabel.text = [NSString stringWithFormat:@"%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"已经", nil),_AHmodel.AHcumulativeNubDays,NSLocalizedString(@"天~", nil),NSLocalizedString(@"少喝", nil),_AHmodel.AHaccumulativeBot,NSLocalizedString(@"瓶苏打水", nil),NSLocalizedString(@"累计节省", nil),_AHmodel.AHcumulativeAmount,NSLocalizedString(@"元", nil)];
}
#pragma mark - 按钮点击事件
- (void)AHbtnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.AHselectIndex = 0;
    }else if (sender.tag == 101){
        self.AHselectIndex = 1;
    }
    if (self.AHClockCellB) {
        self.AHClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)AHremindLabel{
    if (!_AHremindLabel) {
        _AHremindLabel = [[UILabel alloc] init];
        _AHremindLabel.layer.cornerRadius = 16.0f;
        _AHremindLabel.layer.masksToBounds = YES;
        _AHremindLabel.textColor = [UIColor darkGrayColor];
        _AHremindLabel.font = [UIFont systemFontOfSize:20];
        _AHremindLabel.numberOfLines = 0;
        _AHremindLabel.backgroundColor = [UIColor orangeColor];
        _AHremindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _AHremindLabel;
}
- (UIButton *)AHtargetButton{
    if (!_AHtargetButton) {
        _AHtargetButton = [[UIButton alloc] init];
        _AHtargetButton.layer.cornerRadius = 12.0f;
        _AHtargetButton.layer.masksToBounds = YES;
        [_AHtargetButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        _AHtargetButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_AHtargetButton setBackgroundColor:[UIColor purpleColor]];
        _AHtargetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AHtargetButton setTitle:NSLocalizedString(@"目标", nil) forState:UIControlStateNormal];
        _AHtargetButton.tag = 100;
        [_AHtargetButton addTarget:self action:@selector(AHbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AHtargetButton;
}
- (UIButton *)AHclockInButton{
    if (!_AHclockInButton) {
        _AHclockInButton = [[UIButton alloc] init];
        _AHclockInButton.layer.cornerRadius = 12.0f;
        _AHclockInButton.layer.masksToBounds = YES;
        [_AHclockInButton setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
        _AHclockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_AHclockInButton setBackgroundColor:[UIColor blueColor]];
        _AHclockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_AHclockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _AHclockInButton.tag = 101;
        [_AHclockInButton addTarget:self action:@selector(AHbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AHclockInButton;
}
@end
