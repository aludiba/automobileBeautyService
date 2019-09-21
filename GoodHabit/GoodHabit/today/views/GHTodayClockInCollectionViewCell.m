//
//  GHTodayClockInTableViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHTodayClockInCollectionViewCell.h"
#import "GHGuideModel.h"

@interface GHTodayClockInCollectionViewCell()
@property(nonatomic, strong)UIImageView *clockInImgView;//打卡提醒
@property(nonatomic, strong)UIImageView *projectImgView;//打卡项目图
@property(nonatomic, strong)UILabel *projectLabel;//打卡项目名称
@property(nonatomic, strong)UILabel *clockContinuouslyInformationLabel;//该项目连续打卡天数
@end
@implementation GHTodayClockInCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.clockInImgView];
        [self.contentView addSubview:self.projectImgView];
        [self.contentView addSubview:self.projectLabel];
        [self.contentView addSubview:self.clockContinuouslyInformationLabel];

        [self.projectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        [self.clockInImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.width.mas_equalTo(16);
            make.height.mas_equalTo(16);
        }];
        [self.projectLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.projectImgView.mas_bottom);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(82);
            make.height.mas_equalTo(30);
        }];
        [self.clockContinuouslyInformationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.projectLabel.mas_bottom);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(48);
            make.height.mas_equalTo(12);
        }];
    }
    return self;
}
- (void)setModel:(GHGuideModel *)model{
    _model = model;
    self.projectImgView.image = [UIImage imageNamed:_model.imageContent];
    self.projectLabel.text = _model.content;
    self.clockContinuouslyInformationLabel.text = [NSString stringWithFormat:@"%@%ld%@",NSLocalizedString(@"连续", nil),_model.clockContinuouslyNumber,NSLocalizedString(@"天", nil)];
}
#pragma mark - 属性懒加载
- (UIImageView *)clockInImgView{
    if (!_clockInImgView) {
        _clockInImgView = [[UIImageView alloc] init];
        _clockInImgView.image = [UIImage imageNamed:@"GHToday_Clocked_tag"];
    }
    return _clockInImgView;
}
- (UIImageView *)projectImgView{
    if (!_projectImgView) {
        _projectImgView = [[UIImageView alloc] init];
    }
    return _projectImgView;
}
- (UILabel *)projectLabel{
    if (!_projectLabel) {
        _projectLabel = [[UILabel alloc] init];
        _projectLabel.textColor = [UIColor blackColor];
        _projectLabel.font = [UIFont systemFontOfSize:13];
        _projectLabel.backgroundColor = [UIColor whiteColor];
        _projectLabel.numberOfLines = 0;
        _projectLabel.textAlignment = NSTextAlignmentCenter;
        [_projectLabel sizeToFit];
    }
    return _projectLabel;
}
- (UILabel *)clockContinuouslyInformationLabel{
    if (!_clockContinuouslyInformationLabel) {
        _clockContinuouslyInformationLabel = [[UILabel alloc] init];
        _clockContinuouslyInformationLabel.textColor = [UIColor grayColor];
        _clockContinuouslyInformationLabel.font = [UIFont systemFontOfSize:11];
        _clockContinuouslyInformationLabel.backgroundColor = [UIColor whiteColor];
        _clockContinuouslyInformationLabel.numberOfLines = 0;
        _clockContinuouslyInformationLabel.textAlignment = NSTextAlignmentCenter;
        [_clockContinuouslyInformationLabel sizeToFit];
    }
    return _clockContinuouslyInformationLabel;
}
@end
