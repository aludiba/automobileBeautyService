//
//  PHDailyHabitsTableViewCell.m
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHDailyHabitsTableViewCell.h"
#import "PHGuideModel.h"
@interface PHDailyHabitsTableViewCell()
@property(nonatomic, strong)UIView *PHbackView;
@property(nonatomic, strong)UIImageView *PHcontentImageView;
@property(nonatomic, strong)UILabel *PHcontentLabel;
@property(nonatomic, strong)UILabel *PHclockLabel;
@property(nonatomic, strong)UILabel *PHpromptLabel;
@end
@implementation PHDailyHabitsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = PHH_Color(107, 208, 227, 1);
        [self.contentView addSubview:self.PHbackView];
        self.PHbackView.backgroundColor = [UIColor whiteColor];
        self.PHbackView.layer.cornerRadius = 8.0f;
        self.PHbackView.layer.masksToBounds = YES;
        self.PHbackView.layer.borderColor = [UIColor blackColor].CGColor;
        self.PHbackView.layer.borderWidth = 2.0f;
        
        [self.PHbackView addSubview:self.PHcontentImageView];
        [self.PHbackView addSubview:self.PHcontentLabel];
        [self.PHbackView addSubview:self.PHclockLabel];
        [self.PHbackView addSubview:self.PHpromptLabel];
        
        [self.PHbackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(5);
make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.bottom.equalTo(self.contentView).offset(-5);
        }];
        [self.PHcontentImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PHbackView).offset(16);
            make.centerY.equalTo(self.PHbackView);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        [self.PHcontentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.PHcontentImageView.mas_trailing).offset(10);
            make.centerY.equalTo(self.PHbackView);
            make.width.mas_equalTo(PHWIDTH - 81 - 10 - 50 - 16);
            make.height.mas_equalTo(20);
        }];
        [self.PHclockLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PHbackView).offset(10);
            make.trailing.equalTo(self.PHbackView).offset(-16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(20);
        }];
        [self.PHpromptLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PHclockLabel.mas_bottom).offset(5);
            make.trailing.equalTo(self.PHbackView).offset(-16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(15);
            make.bottom.equalTo(self.PHbackView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(PHGuideModel *)model{
    _model = model;
    self.PHcontentImageView.image = [UIImage imageNamed:_model.PHimageContent];
    self.PHcontentLabel.text = _model.content;
    self.PHclockLabel.text = [NSString stringWithFormat:@"%ld %@",_model.PHclockContinuouslyNumber,NSLocalizedString(@"天", nil)];
}
#pragma mark - 属性懒加载
- (UIView *)PHbackView{
    if (!_PHbackView) {
        _PHbackView = [[UIView alloc] init];
        _PHbackView.backgroundColor = [UIColor whiteColor];
    }
    return _PHbackView;
}
- (UIImageView *)PHcontentImageView{
    if (!_PHcontentImageView) {
        _PHcontentImageView = [[UIImageView alloc] init];
    }
    return _PHcontentImageView;
}
- (UILabel *)PHcontentLabel{
    if (!_PHcontentLabel) {
        _PHcontentLabel = [[UILabel alloc] init];
        _PHcontentLabel.textColor = [UIColor blackColor];
        _PHcontentLabel.font = [UIFont boldSystemFontOfSize:15];
        _PHcontentLabel.numberOfLines = 0;
    }
    return _PHcontentLabel;
}
- (UILabel *)PHclockLabel{
    if (!_PHclockLabel) {
        _PHclockLabel = [[UILabel alloc] init];
        _PHclockLabel.textColor = [UIColor blackColor];
        _PHclockLabel.font = [UIFont boldSystemFontOfSize:16];
        _PHclockLabel.textAlignment = NSTextAlignmentRight;
        _PHclockLabel.numberOfLines = 0;
    }
    return _PHclockLabel;
}
- (UILabel *)PHpromptLabel{
    if (!_PHpromptLabel) {
        _PHpromptLabel = [[UILabel alloc] init];
        _PHpromptLabel.textColor = [UIColor blackColor];
        _PHpromptLabel.font = [UIFont systemFontOfSize:13];
        _PHpromptLabel.textAlignment = NSTextAlignmentRight;
        _PHpromptLabel.text = NSLocalizedString(@"共计坚持", nil);
        _PHpromptLabel.numberOfLines = 0;
    }
    return _PHpromptLabel;
}
@end
