//
//  YWKGAClockTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "YWKGAClockTableViewCell.h"
#import "YWKGAgamePlanSaveModel.h"

@interface YWKGAClockTableViewCell()
@property(nonatomic, strong)UILabel *YWKGAremindLabel;//戒酒提醒
@property(nonatomic, strong)UIButton *YWKGAtargetButton;//目标
@property(nonatomic, strong)UIButton *YWKGAclockInButton;//打卡
@end
@implementation YWKGAClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.YWKGAremindLabel];
        [self.contentView addSubview:self.YWKGAtargetButton];
        [self.contentView addSubview:self.YWKGAclockInButton];
        
        [self.YWKGAremindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(48);
            make.trailing.equalTo(self.contentView).offset(-48);
            make.top.equalTo(self.contentView).offset(100);
            make.height.mas_equalTo(140);
        }];
        [self.YWKGAtargetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(100);
            make.top.equalTo(self.YWKGAremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
        }];
        [self.YWKGAclockInButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-100);
            make.top.equalTo(self.YWKGAremindLabel.mas_bottom).offset(60);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
            make.bottom.equalTo(self.contentView).offset(-100);
        }];
    }
    return self;
}
- (void)setModel:(YWKGAgamePlanSaveModel *)model{
    _model = model;
    self.YWKGAremindLabel.text = [NSString stringWithFormat:@"%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"已经", nil),_model.YWKGAcumulativeNubDays,NSLocalizedString(@"天~", nil),NSLocalizedString(@"少玩", nil),_model.YWKGAaccumulativeGames,NSLocalizedString(@"次游戏", nil),NSLocalizedString(@"累计节省", nil),_model.YWKGAcumulativeAmount,NSLocalizedString(@"小时", nil)];
}
#pragma mark - 按钮点击事件
- (void)YWKGAbtnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.selectIndex = 0;
    }else if (sender.tag == 101){
        self.selectIndex = 1;
    }
    if (self.YWKGAClockCellB) {
        self.YWKGAClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)YWKGAremindLabel{
    if (!_YWKGAremindLabel) {
        _YWKGAremindLabel = [[UILabel alloc] init];
//        _YWKGAremindLabel.layer.cornerRadius = 8.0f;
//        _YWKGAremindLabel.layer.masksToBounds = YES;
//        _YWKGAremindLabel.layer.borderColor = [UIColor grayColor].CGColor;
//        _YWKGAremindLabel.layer.borderWidth = 1.0f;
        _YWKGAremindLabel.textColor = [UIColor blackColor];
        _YWKGAremindLabel.font = [UIFont systemFontOfSize:20];
        _YWKGAremindLabel.numberOfLines = 0;
        _YWKGAremindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _YWKGAremindLabel;
}
- (UIButton *)YWKGAtargetButton{
    if (!_YWKGAtargetButton) {
        _YWKGAtargetButton = [[UIButton alloc] init];
        _YWKGAtargetButton.layer.cornerRadius = 32.0f;
        _YWKGAtargetButton.layer.masksToBounds = YES;
        _YWKGAtargetButton.layer.borderColor = [UIColor grayColor].CGColor;
        _YWKGAtargetButton.layer.borderWidth = 1.0f;
        [_YWKGAtargetButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        _YWKGAtargetButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _YWKGAtargetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_YWKGAtargetButton setTitle:NSLocalizedString(@"目标", nil) forState:UIControlStateNormal];
        _YWKGAtargetButton.tag = 100;
        [_YWKGAtargetButton addTarget:self action:@selector(YWKGAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YWKGAtargetButton;
}
- (UIButton *)YWKGAclockInButton{
    if (!_YWKGAclockInButton) {
        _YWKGAclockInButton = [[UIButton alloc] init];
        _YWKGAclockInButton.layer.cornerRadius = 32.0f;
        _YWKGAclockInButton.layer.masksToBounds = YES;
        _YWKGAclockInButton.layer.borderColor = [UIColor grayColor].CGColor;
        _YWKGAclockInButton.layer.borderWidth = 1.0f;
        [_YWKGAclockInButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        _YWKGAclockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        _YWKGAclockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_YWKGAclockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _YWKGAclockInButton.tag = 101;
        [_YWKGAclockInButton addTarget:self action:@selector(YWKGAbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _YWKGAclockInButton;
}
@end
