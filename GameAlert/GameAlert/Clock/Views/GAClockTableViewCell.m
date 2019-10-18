//
//  GAClockTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "GAClockTableViewCell.h"
#import "GAgamePlanSaveModel.h"

@interface GAClockTableViewCell()
@property(nonatomic, strong)UILabel *GAremindLabel;//戒酒提醒
@property(nonatomic, strong)UIButton *GAtargetButton;//目标
@property(nonatomic, strong)UIButton *GAclockInButton;//打卡
@end
@implementation GAClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = GAH_Color(242, 242, 242, 1);
        [self.contentView addSubview:self.GAremindLabel];
        [self.contentView addSubview:self.GAtargetButton];
        [self.contentView addSubview:self.GAclockInButton];
        
        [self.GAremindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(48);
            make.trailing.equalTo(self.contentView).offset(-48);
            make.top.equalTo(self.contentView).offset(100);
            make.height.mas_equalTo(140);
        }];
        [self.GAtargetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(100);
            make.top.equalTo(self.GAremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
        }];
        [self.GAclockInButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-100);
            make.top.equalTo(self.GAremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
            make.bottom.equalTo(self.contentView).offset(-100);
        }];
    }
    return self;
}
- (void)setModel:(GAgamePlanSaveModel *)model{
    _model = model;
    self.GAremindLabel.text = [NSString stringWithFormat:@"%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"已经", nil),_model.GAcumulativeNubDays,NSLocalizedString(@"天~", nil),NSLocalizedString(@"少喝", nil),_model.GAaccumulativeGames,NSLocalizedString(@"瓶苏打水", nil),NSLocalizedString(@"累计节省", nil),_model.GAcumulativeAmount,NSLocalizedString(@"元", nil)];
}
#pragma mark - 按钮点击事件
- (void)GAbtnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.selectIndex = 0;
    }else if (sender.tag == 101){
        self.selectIndex = 1;
    }
    if (self.GAClockCellB) {
        self.GAClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)GAremindLabel{
    if (!_GAremindLabel) {
        _GAremindLabel = [[UILabel alloc] init];
        _GAremindLabel.layer.cornerRadius = 32.0f;
        _GAremindLabel.layer.masksToBounds = YES;
        _GAremindLabel.textColor = [UIColor blackColor];
        _GAremindLabel.font = [UIFont systemFontOfSize:20];
        _GAremindLabel.numberOfLines = 0;
        _GAremindLabel.backgroundColor = [UIColor grayColor];
        _GAremindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _GAremindLabel;
}
- (UIButton *)GAtargetButton{
    if (!_GAtargetButton) {
        _GAtargetButton = [[UIButton alloc] init];
        _GAtargetButton.layer.cornerRadius = 8.0f;
        _GAtargetButton.layer.masksToBounds = YES;
        [_GAtargetButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _GAtargetButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_GAtargetButton setBackgroundColor:[UIColor purpleColor]];
        _GAtargetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GAtargetButton setTitle:NSLocalizedString(@"目标", nil) forState:UIControlStateNormal];
        _GAtargetButton.tag = 100;
        [_GAtargetButton addTarget:self action:@selector(GAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAtargetButton;
}
- (UIButton *)GAclockInButton{
    if (!_GAclockInButton) {
        _GAclockInButton = [[UIButton alloc] init];
        _GAclockInButton.layer.cornerRadius = 8.0f;
        _GAclockInButton.layer.masksToBounds = YES;
        [_GAclockInButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        _GAclockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_GAclockInButton setBackgroundColor:[UIColor purpleColor]];
        _GAclockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_GAclockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _GAclockInButton.tag = 101;
        [_GAclockInButton addTarget:self action:@selector(GAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _GAclockInButton;
}
@end
