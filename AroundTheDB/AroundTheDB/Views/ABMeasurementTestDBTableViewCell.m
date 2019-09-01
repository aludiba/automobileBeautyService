//
//  ABMeasurementTestDBTableViewCell.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABMeasurementTestDBTableViewCell.h"
#import "ABMeasurementModel.h"

@interface ABMeasurementTestDBTableViewCell()
@property(nonatomic, strong)UIView *scopeView;
@property(nonatomic, strong)UILabel *calibrationLabel;//刻度
@property(nonatomic, strong)UILabel *veryQuietLabel;//极静
@property(nonatomic, strong)UILabel *calibrationLabel1;
@property(nonatomic, strong)UILabel *quietLabel;//安静
@property(nonatomic, strong)UILabel *calibrationLabel2;
@property(nonatomic, strong)UILabel *generalLabel;//一般
@property(nonatomic, strong)UILabel *calibrationLabel3;
@property(nonatomic, strong)UILabel *noisyLabel;//吵闹
@property(nonatomic, strong)UILabel *calibrationLabel4;
@property(nonatomic, strong)UILabel *veryNoisyLabel;//很吵
@property(nonatomic, strong)UILabel *calibrationLabel5;
@property(nonatomic, strong)UILabel *moreVeryNoisyLabel;//极吵
@property(nonatomic, strong)UILabel *calibrationLabel6;
@property(nonatomic, strong)UISlider *scaleLine;

@property(nonatomic, strong)UILabel *maxValueLabel;
@property(nonatomic, strong)UILabel *maxTitleLabel;
@property(nonatomic, strong)UILabel * averageValueLabel;
@property(nonatomic, strong)UILabel * averageTitleLabel;
@property(nonatomic, strong)UILabel *realDBLabel;


@property(nonatomic, strong)UIButton *controlButton;
@end
@implementation ABMeasurementTestDBTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = ABH_Color(15, 18, 39, 1);
        [self.contentView addSubview:self.scopeView];
         [self.scopeView mas_makeConstraints:^(MASConstraintMaker *make) {
             make.top.equalTo(self.contentView).offset(15);
             make.centerX.equalTo(self.contentView);
             make.width.mas_equalTo(ABWIDTH - 60);
             make.height.mas_equalTo(45);
         }];
        CGFloat width = 20 * (ABWIDTH - 60) / 120;
        [self.scopeView addSubview:self.veryQuietLabel];
        [self.veryQuietLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.scopeView);
            make.leading.equalTo(self.scopeView);
            make.height.mas_equalTo(45);
            make.width.mas_equalTo(width);
        }];
        CGFloat width1 = 20 * (ABWIDTH - 60) / 120;
        [self.scopeView addSubview:self.quietLabel];
        [self.quietLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.scopeView);
            make.leading.equalTo(self.veryQuietLabel.mas_trailing);
            make.height.mas_equalTo(45);
            make.width.mas_equalTo(width1);
        }];
        CGFloat width2 = 20 * (ABWIDTH - 60) / 120;
        [self.scopeView addSubview:self.generalLabel];
        [self.generalLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.scopeView);
            make.leading.equalTo(self.quietLabel.mas_trailing);
            make.height.mas_equalTo(45);
            make.width.mas_equalTo(width2);
        }];
        CGFloat width3 = 10 * (ABWIDTH - 60) / 120;
        [self.scopeView addSubview:self.noisyLabel];
        [self.noisyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.scopeView);
            make.leading.equalTo(self.generalLabel.mas_trailing);
            make.height.mas_equalTo(45);
            make.width.mas_equalTo(width3);
        }];
        CGFloat width4 = 20 * (ABWIDTH - 60) / 120;
        [self.scopeView addSubview:self.veryNoisyLabel];
        [self.veryNoisyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.scopeView);
            make.leading.equalTo(self.noisyLabel.mas_trailing);
            make.height.mas_equalTo(45);
            make.width.mas_equalTo(width4);
        }];
        CGFloat width5 = 30 * (ABWIDTH - 60) / 120;
        [self.scopeView addSubview:self.moreVeryNoisyLabel];
        [self.moreVeryNoisyLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.scopeView);
            make.leading.equalTo(self.veryNoisyLabel.mas_trailing);
            make.height.mas_equalTo(45);
            make.width.mas_equalTo(width5);
        }];
        [self.contentView addSubview:self.calibrationLabel];
        [self.calibrationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(15);
            make.top.equalTo(self.scopeView.mas_bottom).offset(3);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(15);
        }];
        [self.contentView addSubview:self.calibrationLabel1];
        [self.calibrationLabel1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.calibrationLabel.mas_trailing).offset(width - 30);
            make.top.equalTo(self.scopeView.mas_bottom).offset(3);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(15);
        }];
        [self.contentView addSubview:self.calibrationLabel2];
        [self.calibrationLabel2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.calibrationLabel1.mas_trailing).offset(width1 - 30);
            make.top.equalTo(self.scopeView.mas_bottom).offset(3);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(15);
        }];
        [self.contentView addSubview:self.calibrationLabel3];
        [self.calibrationLabel3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.calibrationLabel2.mas_trailing).offset(width2 - 30);
            make.top.equalTo(self.scopeView.mas_bottom).offset(3);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(15);
        }];
        [self.contentView addSubview:self.calibrationLabel4];
        [self.calibrationLabel4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.calibrationLabel3.mas_trailing).offset(width3 + width4 * 0.5 - 30);
            make.top.equalTo(self.scopeView.mas_bottom).offset(3);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(15);
        }];
        [self.contentView addSubview:self.calibrationLabel5];
        [self.calibrationLabel5 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.calibrationLabel4.mas_trailing).offset(width4 * 0.5 + width5 * 0.5 - 30);
            make.top.equalTo(self.scopeView.mas_bottom).offset(3);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(15);
        }];
        [self.contentView addSubview:self.calibrationLabel6];
        [self.calibrationLabel6 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.calibrationLabel5.mas_trailing).offset(width5 * 0.5 - 30);
            make.top.equalTo(self.scopeView.mas_bottom).offset(3);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(15);
        }];
        [self.contentView addSubview:self.scaleLine];
        [self.scaleLine mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.calibrationLabel6.mas_bottom).offset(15);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(ABWIDTH - 60);
            make.height.mas_equalTo(30);
        }];
        [self.contentView addSubview:self.maxValueLabel];
        [self.maxValueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(60);
            make.top.equalTo(self.scaleLine.mas_bottom).offset(30);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(20);
        }];
        [self.contentView addSubview:self.maxTitleLabel];
        [self.maxTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(30);
            make.top.equalTo(self.maxValueLabel.mas_bottom).offset(15);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(20);
        }];
        [self.contentView addSubview:self.averageValueLabel];
        [self.averageValueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-60);
            make.top.equalTo(self.scaleLine.mas_bottom).offset(30);
            make.width.mas_equalTo(30);
            make.height.mas_equalTo(20);
        }];
        [self.contentView addSubview:self.averageTitleLabel];
        [self.averageTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-30);
            make.top.equalTo(self.maxValueLabel.mas_bottom).offset(15);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(20);
        }];
        [self.contentView addSubview:self.realDBLabel];
        [self.realDBLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerY.equalTo(self.averageValueLabel);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(45);
            make.height.mas_equalTo(30);
        }];
        [self.contentView addSubview:self.controlButton];
        [self.controlButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.averageTitleLabel.mas_bottom).offset(20);
            make.centerX.equalTo(self.contentView);
            make.height.mas_equalTo(60);
            make.width.mas_equalTo(180);
        make.bottom.equalTo(self.contentView).offset(-30);
        }];
    }
    return self;
}
- (void)btnClick:(UIButton *)sender{
    self.isStart = !self.isStart;
    if (self.isStart) {
        [self.controlButton setTitle:NSLocalizedString(@"停止测试", nil) forState:UIControlStateNormal];
    }else{
        [self.controlButton setTitle:NSLocalizedString(@"开始测试", nil) forState:UIControlStateNormal];
    }
    if (self.measurementTestDBBlock) {
        self.measurementTestDBBlock(self);
    }
}
- (void)setModel:(ABMeasurementModel *)model{
    _model = model;
    int realdb = [_model.realDB intValue];
    int averagedb = [_model.averageDB intValue];
    int maxdb = [_model.maxDB intValue];
    
    self.maxValueLabel.text = [NSString stringWithFormat:@"%d",maxdb];
    self.averageValueLabel.text = [NSString stringWithFormat:@"%d",averagedb];
    self.realDBLabel.text = [NSString stringWithFormat:@"%d",realdb];
    self.scaleLine.value = (float)realdb;
}
#pragma mark - 属性懒加载
- (UIView *)scopeView{
    if (!_scopeView) {
        _scopeView = [[UIView alloc] init];
        _scopeView.layer.cornerRadius = 4.0f;
        _scopeView.layer.masksToBounds = YES;
        _scopeView.backgroundColor = ABH_Color(15, 18, 39, 1);
    }
    return _scopeView;
}
- (UILabel *)calibrationLabel{
    if (!_calibrationLabel) {
        _calibrationLabel = [[UILabel alloc] init];
        _calibrationLabel.textColor = ABH_Color(142, 112, 2, 1);
        _calibrationLabel.font = [UIFont systemFontOfSize:14];
        _calibrationLabel.textAlignment = NSTextAlignmentCenter;
        _calibrationLabel.text = @"0";
    }
    return _calibrationLabel;
}
- (UILabel *)veryQuietLabel{
    if (!_veryQuietLabel) {
        _veryQuietLabel = [[UILabel alloc] init];
        _veryQuietLabel.backgroundColor = ABH_Color(0, 155, 37, 1);
        _veryQuietLabel.textColor = [UIColor blackColor];
        _veryQuietLabel.font = [UIFont systemFontOfSize:15];
        _veryQuietLabel.textAlignment = NSTextAlignmentCenter;
        _veryQuietLabel.text = NSLocalizedString(@"极静", nil);
    }
    return _veryQuietLabel;
}
- (UILabel *)calibrationLabel1{
    if (!_calibrationLabel1) {
        _calibrationLabel1 = [[UILabel alloc] init];
        _calibrationLabel1.textColor = ABH_Color(142, 112, 2, 1);
        _calibrationLabel1.font = [UIFont systemFontOfSize:14];
        _calibrationLabel1.textAlignment = NSTextAlignmentCenter;
        _calibrationLabel1.text = @"20";
    }
    return _calibrationLabel1;
}
- (UILabel *)quietLabel{
    if (!_quietLabel) {
        _quietLabel = [[UILabel alloc] init];
        _quietLabel.backgroundColor = ABH_Color(148, 210, 0, 1);
        _quietLabel.textColor = [UIColor blackColor];
        _quietLabel.font = [UIFont systemFontOfSize:15];
        _quietLabel.textAlignment = NSTextAlignmentCenter;
        _quietLabel.text = NSLocalizedString(@"安静", nil);
    }
    return _quietLabel;
}
- (UILabel *)calibrationLabel2{
    if (!_calibrationLabel2) {
        _calibrationLabel2 = [[UILabel alloc] init];
        _calibrationLabel2.textColor = ABH_Color(142, 112, 2, 1);
        _calibrationLabel2.font = [UIFont systemFontOfSize:14];
        _calibrationLabel2.textAlignment = NSTextAlignmentCenter;
        _calibrationLabel2.text = @"40";
    }
    return _calibrationLabel2;
}
- (UILabel *)generalLabel{
    if (!_generalLabel) {
        _generalLabel = [[UILabel alloc] init];
        _generalLabel.backgroundColor = ABH_Color(183, 237, 0, 1);
        _generalLabel.textColor = [UIColor blackColor];
        _generalLabel.font = [UIFont systemFontOfSize:15];
        _generalLabel.textAlignment = NSTextAlignmentCenter;
        _generalLabel.text = NSLocalizedString(@"一般", nil);
    }
    return _generalLabel;
}
- (UILabel *)calibrationLabel3{
    if (!_calibrationLabel3) {
        _calibrationLabel3 = [[UILabel alloc] init];
        _calibrationLabel3.textColor = ABH_Color(142, 112, 2, 1);
        _calibrationLabel3.font = [UIFont systemFontOfSize:14];
        _calibrationLabel3.textAlignment = NSTextAlignmentCenter;
        _calibrationLabel3.text = @"60";
    }
    return _calibrationLabel3;
}
- (UILabel *)noisyLabel{
    if (!_noisyLabel) {
        _noisyLabel = [[UILabel alloc] init];
        _noisyLabel.backgroundColor = ABH_Color(255, 198, 0, 1);
        _noisyLabel.textColor = [UIColor blackColor];
        _noisyLabel.font = [UIFont systemFontOfSize:12];
        _noisyLabel.textAlignment = NSTextAlignmentCenter;
        _noisyLabel.text = NSLocalizedString(@"吵闹", nil);
    }
    return _noisyLabel;
}
- (UILabel *)calibrationLabel4{
    if (!_calibrationLabel4) {
        _calibrationLabel4 = [[UILabel alloc] init];
        _calibrationLabel4.textColor = ABH_Color(142, 112, 2, 1);
        _calibrationLabel4.font = [UIFont systemFontOfSize:14];
        _calibrationLabel4.textAlignment = NSTextAlignmentCenter;
        _calibrationLabel4.text = @"80";
    }
    return _calibrationLabel4;
}
- (UILabel *)veryNoisyLabel{
    if (!_veryNoisyLabel) {
        _veryNoisyLabel = [[UILabel alloc] init];
        _veryNoisyLabel.backgroundColor = ABH_Color(255, 157, 0, 1);
        _veryNoisyLabel.textColor = [UIColor blackColor];
        _veryNoisyLabel.font = [UIFont systemFontOfSize:15];
        _veryNoisyLabel.textAlignment = NSTextAlignmentCenter;
        _veryNoisyLabel.text = NSLocalizedString(@"很吵", nil);
    }
    return _veryNoisyLabel;
}
- (UILabel *)calibrationLabel5{
    if (!_calibrationLabel5) {
        _calibrationLabel5 = [[UILabel alloc] init];
        _calibrationLabel5.textColor = ABH_Color(142, 112, 2, 1);
        _calibrationLabel5.font = [UIFont systemFontOfSize:14];
        _calibrationLabel5.textAlignment = NSTextAlignmentCenter;
        _calibrationLabel5.text = @"100";
    }
    return _calibrationLabel5;
}
- (UILabel *)moreVeryNoisyLabel{
    if (!_moreVeryNoisyLabel) {
        _moreVeryNoisyLabel = [[UILabel alloc] init];
        _moreVeryNoisyLabel.backgroundColor = ABH_Color(254, 75, 0, 1);
        _moreVeryNoisyLabel.textColor = [UIColor blackColor];
        _moreVeryNoisyLabel.font = [UIFont systemFontOfSize:15];
        _moreVeryNoisyLabel.textAlignment = NSTextAlignmentCenter;
        _moreVeryNoisyLabel.text = NSLocalizedString(@"极吵", nil);
    }
    return _moreVeryNoisyLabel;
}
- (UILabel *)calibrationLabel6{
    if (!_calibrationLabel6) {
        _calibrationLabel6 = [[UILabel alloc] init];
        _calibrationLabel6.textColor = ABH_Color(142, 112, 2, 1);
        _calibrationLabel6.font = [UIFont systemFontOfSize:14];
        _calibrationLabel6.textAlignment = NSTextAlignmentCenter;
        _calibrationLabel6.text = @"120";
    }
    return _calibrationLabel6;
}
- (UISlider *)scaleLine{
    if (!_scaleLine) {
        _scaleLine = [[UISlider alloc] init];
        _scaleLine.minimumValue = 0;
        _scaleLine.maximumValue = 120;
    }
    return _scaleLine;
}
- (UILabel *)maxTitleLabel{
    if (!_maxTitleLabel) {
        _maxTitleLabel = [[UILabel alloc] init];
        _maxTitleLabel.font = [UIFont systemFontOfSize:16];
        _maxTitleLabel.textColor = ABH_Color(68, 70, 78, 1);
        _maxTitleLabel.textAlignment = NSTextAlignmentCenter;
        _maxTitleLabel.backgroundColor = ABH_Color(15, 18, 39, 1);
        _maxTitleLabel.text = NSLocalizedString(@"最大分贝", nil);
    }
    return _maxTitleLabel;
}
- (UILabel *)maxValueLabel{
    if (!_maxValueLabel) {
        _maxValueLabel = [[UILabel alloc] init];
        _maxValueLabel.font = [UIFont systemFontOfSize:16];
        _maxValueLabel.textColor = [UIColor whiteColor];
        _maxValueLabel.textAlignment = NSTextAlignmentCenter;
        _maxValueLabel.backgroundColor = ABH_Color(15, 18, 39, 1);
        _maxValueLabel.text = @"0";
    }
    return _maxValueLabel;
}
- (UILabel *)averageTitleLabel{
    if (!_averageTitleLabel) {
        _averageTitleLabel = [[UILabel alloc] init];
        _averageTitleLabel.font = [UIFont systemFontOfSize:16];
        _averageTitleLabel.textColor = ABH_Color(68, 70, 78, 1);
        _averageTitleLabel.textAlignment = NSTextAlignmentCenter;
        _averageTitleLabel.backgroundColor = ABH_Color(15, 18, 39, 1);
        _averageTitleLabel.text = NSLocalizedString(@"平均分贝", nil);
    }
    return _averageTitleLabel;
}
- (UILabel *)averageValueLabel{
    if (!_averageValueLabel) {
        _averageValueLabel = [[UILabel alloc] init];
        _averageValueLabel.font = [UIFont systemFontOfSize:16];
        _averageValueLabel.textColor = [UIColor whiteColor];
        _averageValueLabel.textAlignment = NSTextAlignmentCenter;
        _averageValueLabel.backgroundColor = ABH_Color(15, 18, 39, 1);
        _averageValueLabel.text = @"0";
    }
    return _averageValueLabel;
}
- (UILabel *)realDBLabel{
    if (!_realDBLabel) {
        _realDBLabel = [[UILabel alloc] init];
        _realDBLabel.font = [UIFont systemFontOfSize:24];
        _realDBLabel.textColor = [UIColor whiteColor];
        _realDBLabel.textAlignment = NSTextAlignmentCenter;
        _realDBLabel.backgroundColor = ABH_Color(15, 18, 39, 1);
        _realDBLabel.text = @"0";
    }
    return _realDBLabel;
}
- (UIButton *)controlButton{
    if (!_controlButton) {
        _controlButton = [[UIButton alloc] init];
        _controlButton.backgroundColor = ABH_Color(0, 212, 155, 1);
        _controlButton.layer.cornerRadius = 6;
        _controlButton.layer.masksToBounds = YES;
        [_controlButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _controlButton.titleLabel.font = [UIFont systemFontOfSize:20];
        [_controlButton setTitle:NSLocalizedString(@"开始测试", nil) forState:UIControlStateNormal];
        [_controlButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _controlButton;
}
@end
