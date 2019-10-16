//
//  QSClockTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/6.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "QSClockTableViewCell.h"
#import "QSsmokingPlanSaveModel.h"

@interface QSClockTableViewCell()
@property(nonatomic, strong)UILabel *QSremindLabel;//戒酒提醒
@property(nonatomic, strong)UIButton *QStargetButton;//目标
@property(nonatomic, strong)UIButton *QSclockInButton;//打卡
@end
@implementation QSClockTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self.contentView addSubview:self.QSremindLabel];
        [self.contentView addSubview:self.QStargetButton];
        [self.contentView addSubview:self.QSclockInButton];
        
        [self.QSremindLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(10);
            make.height.mas_equalTo(120);
        }];
        [self.QStargetButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(64);
            make.top.equalTo(self.QSremindLabel.mas_bottom).offset(15);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
        }];
        [self.QSclockInButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-64);
            make.top.equalTo(self.QSremindLabel.mas_bottom).offset(15);
            make.width.mas_equalTo(64);
            make.height.mas_equalTo(64);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(QSsmokingPlanSaveModel *)model{
    _model = model;
    self.QSremindLabel.text = [NSString stringWithFormat:@"%@\n\n%@%ld%@\n\n%@%ld%@\n%@%ld%@",NSLocalizedString(@"亲爱的戒烟玩家", nil),NSLocalizedString(@"已经", nil),_model.QScumulativeNubDays,NSLocalizedString(@"天没抽烟了~", nil),NSLocalizedString(@"已经少抽", nil),_model.QSaccumulativePac,NSLocalizedString(@"包烟", nil),NSLocalizedString(@"累计节省", nil),_model.QScumulativeAmount,NSLocalizedString(@"元", nil)];
}
#pragma mark - 按钮点击事件
- (void)QSbtnClick:(UIButton *)sender{
    if (sender.tag == 100) {
        self.selectIndex = 0;
    }else if (sender.tag == 101){
        self.selectIndex = 1;
    }
    if (self.QSClockCellB) {
        self.QSClockCellB(self);
    }
}
#pragma mark - 属性懒加载
- (UILabel *)QSremindLabel{
    if (!_QSremindLabel) {
        _QSremindLabel = [[UILabel alloc] init];
        _QSremindLabel.textColor = [UIColor blackColor];
        _QSremindLabel.font = [UIFont systemFontOfSize:14];
        _QSremindLabel.numberOfLines = 0;
        [_QSremindLabel sizeToFit];
        _QSremindLabel.layer.cornerRadius = 8.0f;
        _QSremindLabel.layer.masksToBounds = YES;
        _QSremindLabel.layer.borderColor = [UIColor grayColor].CGColor;
        _QSremindLabel.layer.borderWidth = 1.0f;
        _QSremindLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _QSremindLabel;
}
- (UIButton *)QStargetButton{
    if (!_QStargetButton) {
        _QStargetButton = [[UIButton alloc] init];
        _QStargetButton.layer.cornerRadius = 32.0f;
        _QStargetButton.layer.masksToBounds = YES;
        [_QStargetButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _QStargetButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_QStargetButton setBackgroundColor:[UIColor greenColor]];
        _QStargetButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_QStargetButton setTitle:NSLocalizedString(@"目标", nil) forState:UIControlStateNormal];
        _QStargetButton.tag = 100;
        [_QStargetButton addTarget:self action:@selector(QSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _QStargetButton;
}
- (UIButton *)QSclockInButton{
    if (!_QSclockInButton) {
        _QSclockInButton = [[UIButton alloc] init];
        _QSclockInButton.layer.cornerRadius = 32.0f;
        _QSclockInButton.layer.masksToBounds = YES;
        [_QSclockInButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _QSclockInButton.titleLabel.font = [UIFont systemFontOfSize:15];
        [_QSclockInButton setBackgroundColor:[UIColor greenColor]];
        _QSclockInButton.titleLabel.textAlignment = NSTextAlignmentCenter;
        [_QSclockInButton setTitle:NSLocalizedString(@"打卡", nil) forState:UIControlStateNormal];
        _QSclockInButton.tag = 101;
        [_QSclockInButton addTarget:self action:@selector(QSbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _QSclockInButton;
}
@end
