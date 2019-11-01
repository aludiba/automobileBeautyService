//
//  PHTodayClockInTableViewCell.m
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/21.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHTodayClockInCollectionViewCell.h"
#import "PHGuideModel.h"

@interface PHTodayClockInCollectionViewCell()
@property(nonatomic, strong)UIImageView *PHclockInImgView;//打卡提醒
@property(nonatomic, strong)UIImageView *PHprojectImgView;//打卡项目图
@property(nonatomic, strong)UILabel *PHprojectLabel;//打卡项目名称
@property(nonatomic, strong)UILabel *PHclockContinuouslyInformationLabel;//该项目连续打卡天数
@end
@implementation PHTodayClockInCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self.contentView addSubview:self.PHclockInImgView];
        [self.contentView addSubview:self.PHprojectImgView];
        [self.contentView addSubview:self.PHprojectLabel];
        [self.contentView addSubview:self.PHclockContinuouslyInformationLabel];

        [self.PHprojectImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        [self.PHclockInImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.width.mas_equalTo(16);
            make.height.mas_equalTo(16);
        }];
        [self.PHprojectLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PHprojectImgView.mas_bottom);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(82);
            make.height.mas_equalTo(30);
        }];
        [self.PHclockContinuouslyInformationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PHprojectLabel.mas_bottom);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(48);
            make.height.mas_equalTo(12);
        }];
    }
    return self;
}
- (void)setModel:(PHGuideModel *)model{
    _model = model;
    self.PHprojectImgView.image = [UIImage imageNamed:_model.PHimageContent];
    self.PHprojectLabel.text = _model.content;
    if (_model.PHclockContinuouslyNumber > 0) {
        self.PHclockInImgView.hidden = NO;
    }else{
        self.PHclockInImgView.hidden = YES;
    }
    self.PHclockContinuouslyInformationLabel.text = [NSString stringWithFormat:@"%@%ld%@",NSLocalizedString(@"连续", nil),_model.PHclockContinuouslyNumber,NSLocalizedString(@"天", nil)];
}
#pragma mark - 属性懒加载
- (UIImageView *)PHclockInImgView{
    if (!_PHclockInImgView) {
        _PHclockInImgView = [[UIImageView alloc] init];
        _PHclockInImgView.image = [UIImage imageNamed:@"PHToday_Clocked_tag"];
    }
    return _PHclockInImgView;
}
- (UIImageView *)PHprojectImgView{
    if (!_PHprojectImgView) {
        _PHprojectImgView = [[UIImageView alloc] init];
    }
    return _PHprojectImgView;
}
- (UILabel *)PHprojectLabel{
    if (!_PHprojectLabel) {
        _PHprojectLabel = [[UILabel alloc] init];
        _PHprojectLabel.textColor = [UIColor blackColor];
        _PHprojectLabel.font = [UIFont systemFontOfSize:13];
        _PHprojectLabel.backgroundColor = [UIColor whiteColor];
        _PHprojectLabel.numberOfLines = 0;
        _PHprojectLabel.textAlignment = NSTextAlignmentCenter;
        [_PHprojectLabel sizeToFit];
    }
    return _PHprojectLabel;
}
- (UILabel *)PHclockContinuouslyInformationLabel{
    if (!_PHclockContinuouslyInformationLabel) {
        _PHclockContinuouslyInformationLabel = [[UILabel alloc] init];
        _PHclockContinuouslyInformationLabel.textColor = [UIColor grayColor];
        _PHclockContinuouslyInformationLabel.font = [UIFont systemFontOfSize:11];
        _PHclockContinuouslyInformationLabel.backgroundColor = [UIColor whiteColor];
        _PHclockContinuouslyInformationLabel.numberOfLines = 0;
        _PHclockContinuouslyInformationLabel.textAlignment = NSTextAlignmentCenter;
        [_PHclockContinuouslyInformationLabel sizeToFit];
    }
    return _PHclockContinuouslyInformationLabel;
}
@end
