//
//  SOClockTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOClockTableViewCell.h"
#import "SOsodePlanSaveModel.h"

@interface SOClockTableViewCell()
@property(nonatomic, strong)UILabel *SOremindLabel;//戒酒提醒
@property(nonatomic, strong)UIButton *SOtargetButton;//目标
@property(nonatomic, strong)UIButton *SOclockInButton;//打卡
@end
@implementation SOClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.SOremindLabel];
        [self.contentView addSubview:self.SOtargetButton];
        [self.contentView addSubview:self.SOclockInButton];
        
        [self.SOremindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(48);
            make.trailing.equalTo(self.contentView).offset(-48);
            make.top.equalTo(self.contentView).offset(100);
            make.height.mas_equalTo(140);
        }];
        [self.SOtargetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.SOremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
        }];
        [self.SOclockInButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-64);
            make.top.equalTo(self.SOremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(SOsodePlanSaveModel *)model{
    _model = model;
    self.SOremindLabel.text = [NSString stringWithFormat:@"%@\n\n%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"亲爱的戒苏打水玩家", nil),NSLocalizedString(@"已经", nil),_model.SOcumulativeNubDays,NSLocalizedString(@"天没喝苏打水了~", nil),NSLocalizedString(@"已经少喝", nil),_model.SOaccumulativeBot,NSLocalizedString(@"瓶苏打水", nil),NSLocalizedString(@"累计节省", nil),_model.SOcumulativeAmount,NSLocalizedString(@"元", nil)];
}
#pragma mark - 按钮点击事件
- (void)SObtnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.selectIndex = 0;
    }else if (sender.tag == 101){
        self.selectIndex = 1;
    }
    if (self.SOClockCellB) {
        self.SOClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)SOremindLabel{
    if (!_SOremindLabel) {
        _SOremindLabel = [[UILabel alloc] init];
        _SOremindLabel.textColor = [UIColor blackColor];
        _SOremindLabel.font = [UIFont systemFontOfSize:14];
        _SOremindLabel.numberOfLines = 0;
        [_SOremindLabel sizeToFit];
        _SOremindLabel.layer.cornerRadius = 8.0f;
        _SOremindLabel.layer.masksToBounds = YES;
        _SOremindLabel.layer.borderColor = [UIColor grayColor].CGColor;
        _SOremindLabel.layer.borderWidth = 1.0f;
        _SOremindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _SOremindLabel;
}
- (UIButton *)SOtargetButton{
    if (!_SOtargetButton) {
        _SOtargetButton = [[UIButton alloc] init];
        _SOtargetButton.layer.cornerRadius = 32.0f;
        _SOtargetButton.layer.masksToBounds = YES;
        [_SOtargetButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _SOtargetButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_SOtargetButton setBackgroundColor:[UIColor purpleColor]];
        _SOtargetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_SOtargetButton setTitle:NSLocalizedString(@"目标", nil) forState:UIControlStateNormal];
        _SOtargetButton.tag = 100;
        [_SOtargetButton addTarget:self action:@selector(SObtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _SOtargetButton;
}
- (UIButton *)SOclockInButton{
    if (!_SOclockInButton) {
        _SOclockInButton = [[UIButton alloc] init];
        _SOclockInButton.layer.cornerRadius = 32.0f;
        _SOclockInButton.layer.masksToBounds = YES;
        [_SOclockInButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _SOclockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_SOclockInButton setBackgroundColor:[UIColor purpleColor]];
        _SOclockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_SOclockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _SOclockInButton.tag = 101;
        [_SOclockInButton addTarget:self action:@selector(SObtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _SOclockInButton;
}
@end
