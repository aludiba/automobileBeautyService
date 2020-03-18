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
        self.contentView.backgroundColor = EAH_Color(242, 242, 242, 1);
        [self.contentView addSubview:self.EAremindLabel];
        [self.contentView addSubview:self.EAtargetButton];
        [self.contentView addSubview:self.EAclockInButton];
        
        [self.EAremindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(48);
            make.trailing.equalTo(self.contentView).offset(-48);
            make.top.equalTo(self.contentView).offset(100);
            make.height.mas_equalTo(140);
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
- (void)setModel:(EAsodePlanSaveModel *)model{
    _model = model;
    self.EAremindLabel.text = [NSString stringWithFormat:@"%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"已经", nil),_model.EAcumulativeNubDays,NSLocalizedString(@"天~", nil),NSLocalizedString(@"少喝", nil),_model.EAaccumulativeBot,NSLocalizedString(@"瓶苏打水", nil),NSLocalizedString(@"累计节省", nil),_model.EAcumulativeAmount,NSLocalizedString(@"元", nil)];
}
#pragma mark - 按钮点击事件
- (void)EAbtnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.selectIndex = 0;
    }else if (sender.tag == 101){
        self.selectIndex = 1;
    }
    if (self.EAClockCellB) {
        self.EAClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)EAremindLabel{
    if (!_EAremindLabel) {
        _EAremindLabel = [[UILabel alloc] init];
        _EAremindLabel.layer.cornerRadius = 32.0f;
        _EAremindLabel.layer.masksToBounds = YES;
        _EAremindLabel.textColor = [UIColor blackColor];
        _EAremindLabel.font = [UIFont systemFontOfSize:20];
        _EAremindLabel.numberOfLines = 0;
        _EAremindLabel.backgroundColor = [UIColor grayColor];
        _EAremindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _EAremindLabel;
}
- (UIButton *)EAtargetButton{
    if (!_EAtargetButton) {
        _EAtargetButton = [[UIButton alloc] init];
        _EAtargetButton.layer.cornerRadius = 8.0f;
        _EAtargetButton.layer.masksToBounds = YES;
        [_EAtargetButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
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
        _EAclockInButton.layer.cornerRadius = 8.0f;
        _EAclockInButton.layer.masksToBounds = YES;
        [_EAclockInButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _EAclockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_EAclockInButton setBackgroundColor:[UIColor purpleColor]];
        _EAclockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_EAclockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _EAclockInButton.tag = 101;
        [_EAclockInButton addTarget:self action:@selector(EAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EAclockInButton;
}
@end
