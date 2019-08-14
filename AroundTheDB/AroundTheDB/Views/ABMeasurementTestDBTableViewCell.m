//
//  ABMeasurementTestDBTableViewCell.m
//  AroundTheDB
//
//  Created by bykj on 2019/8/14.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "ABMeasurementTestDBTableViewCell.h"
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
@property(nonatomic, strong)UILabel *realDBLabel;
@property(nonatomic, strong)UILabel * averageValueLabel;
@property(nonatomic, strong)UILabel * averageTitleLabel;

@property(nonatomic, strong)UIButton *controlButton;
@end
@implementation ABMeasurementTestDBTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = ABH_Color(15, 18, 39, 1);
        [self.contentView addSubview:self.scopeView];
         
         [self.scopeView mas_makeConstraints:^(MASConstraintMaker *make) {
             make.top.equalTo(self.contentView);
             make.centerX.equalTo(self.contentView);
             make.width.mas_equalTo(ABWIDTH - 60);
             make.height.mas_equalTo(45);
         }];
    }
    return self;
}
- (void)btnClick:(UIButton *)sender{
    
}
#pragma mark - 属性懒加载
- (UIView *)scopeView{
    if (!_scopeView) {
        _scopeView = [[UIView alloc] init];
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
        _veryQuietLabel.text = @"极静";
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
        _quietLabel.text = @"安静";
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
        _generalLabel.text = @"一般";
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
        _noisyLabel.font = [UIFont systemFontOfSize:15];
        _noisyLabel.textAlignment = NSTextAlignmentCenter;
        _noisyLabel.text = @"吵闹";
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
        _veryNoisyLabel.text = @"很吵";
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
        _moreVeryNoisyLabel.text = @"极吵";
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
        _maxTitleLabel.text = @"最大分贝";
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
- (UILabel *)averageTitleLabel{
    if (!_averageTitleLabel) {
        _averageTitleLabel = [[UILabel alloc] init];
        _averageTitleLabel.font = [UIFont systemFontOfSize:16];
        _averageTitleLabel.textColor = ABH_Color(68, 70, 78, 1);
        _averageTitleLabel.textAlignment = NSTextAlignmentCenter;
        _averageTitleLabel.backgroundColor = ABH_Color(15, 18, 39, 1);
        _averageTitleLabel.text = @"平均分贝";
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
@end
