//
//  CDTodayClockInTableViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDTodayClockInCollectionViewCell.h"
#import "CDGuideModel.h"

@interface CDTodayClockInCollectionViewCell()
@property(nonatomic, strong)UIImageView *CDclockInImgView;//打卡提醒
@property(nonatomic, strong)UIView *CDprojectBackView;
@property(nonatomic, strong)UIImageView *CDprojectImgView;//打卡项目图
@property(nonatomic, strong)UILabel *CDprojectLabel;//打卡项目名称
@property(nonatomic, strong)UILabel *CDclockContinuouslyInformationLabel;//该项目连续打卡天数
@end
@implementation CDTodayClockInCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.CDclockInImgView];
        [self.contentView addSubview:self.CDprojectBackView];
        [self.contentView addSubview:self.CDprojectImgView];
        [self.contentView addSubview:self.CDprojectLabel];
        [self.contentView addSubview:self.CDclockContinuouslyInformationLabel];
        [self.CDprojectBackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(82);
            make.height.mas_equalTo(50);
        }];
        [self.CDprojectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        [self.CDclockInImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.CDprojectBackView.mas_trailing).offset(5);
            make.width.mas_equalTo(16);
            make.height.mas_equalTo(16);
        }];
        [self.CDprojectLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.CDprojectImgView.mas_bottom);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(82);
            make.height.mas_equalTo(30);
        }];
        [self.CDclockContinuouslyInformationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.CDprojectLabel.mas_bottom);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(82);
            make.height.mas_equalTo(12);
        }];
    }
    return self;
}
- (void)setModel:(CDGuideModel *)model{
    _model = model;
    self.CDprojectImgView.image = [UIImage imageNamed:_model.CDimageContent];
    self.CDprojectLabel.text = _model.content;
    if (_model.CDclockContinuouslyNumber > 0) {
        self.CDclockInImgView.hidden = NO;
    }else{
        self.CDclockInImgView.hidden = YES;
    }
    self.CDclockContinuouslyInformationLabel.text = [NSString stringWithFormat:@"%@%ld%@",NSLocalizedString(@"连续", nil),_model.CDclockContinuouslyNumber,NSLocalizedString(@"天", nil)];
}
#pragma mark - 属性懒加载
- (UIImageView *)CDclockInImgView{
    if (!_CDclockInImgView) {
        _CDclockInImgView = [[UIImageView alloc] init];
        _CDclockInImgView.image = [UIImage imageNamed:@"CDToday_Clocked_tag"];
    }
    return _CDclockInImgView;
}
- (UIView *)CDprojectBackView{
    if (!_CDprojectBackView) {
        _CDprojectBackView = [[UIView alloc] init];
        _CDprojectBackView.backgroundColor = [UIColor whiteColor];
    }
    return _CDprojectBackView;
}
- (UIImageView *)CDprojectImgView{
    if (!_CDprojectImgView) {
        _CDprojectImgView = [[UIImageView alloc] init];
    }
    return _CDprojectImgView;
}
- (UILabel *)CDprojectLabel{
    if (!_CDprojectLabel) {
        _CDprojectLabel = [[UILabel alloc] init];
        _CDprojectLabel.backgroundColor = [UIColor cyanColor];
        _CDprojectLabel.textColor = [UIColor blackColor];
        _CDprojectLabel.font = [UIFont systemFontOfSize:13];
        _CDprojectLabel.backgroundColor = [UIColor whiteColor];
        _CDprojectLabel.numberOfLines = 0;
        _CDprojectLabel.textAlignment = NSTextAlignmentCenter;
        [_CDprojectLabel sizeToFit];
    }
    return _CDprojectLabel;
}
- (UILabel *)CDclockContinuouslyInformationLabel{
    if (!_CDclockContinuouslyInformationLabel) {
        _CDclockContinuouslyInformationLabel = [[UILabel alloc] init];
        _CDclockContinuouslyInformationLabel.backgroundColor = [UIColor cyanColor];
        _CDclockContinuouslyInformationLabel.textColor = [UIColor grayColor];
        _CDclockContinuouslyInformationLabel.font = [UIFont systemFontOfSize:11];
        _CDclockContinuouslyInformationLabel.backgroundColor = [UIColor whiteColor];
        _CDclockContinuouslyInformationLabel.numberOfLines = 0;
        _CDclockContinuouslyInformationLabel.textAlignment = NSTextAlignmentCenter;
        [_CDclockContinuouslyInformationLabel sizeToFit];
    }
    return _CDclockContinuouslyInformationLabel;
}
@end
