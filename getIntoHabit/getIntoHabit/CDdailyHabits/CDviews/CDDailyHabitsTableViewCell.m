//
//  CDDailyHabitsTableViewCell.m
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDDailyHabitsTableViewCell.h"
#import "CDGuideModel.h"
@interface CDDailyHabitsTableViewCell()
@property(nonatomic, strong)UIView *CDbackView;
@property(nonatomic, strong)UIImageView *CDcontentImageView;
@property(nonatomic, strong)UILabel *CDcontentLabel;
@property(nonatomic, strong)UILabel *CDclockLabel;
@property(nonatomic, strong)UILabel *CDpromptLabel;
@end
@implementation CDDailyHabitsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.CDbackView];
        self.CDbackView.backgroundColor = [UIColor whiteColor];
        self.CDbackView.layer.cornerRadius = 16.0f;
        self.CDbackView.layer.masksToBounds = YES;
        self.CDbackView.layer.borderColor = [UIColor greenColor].CGColor;
        self.CDbackView.layer.borderWidth = 2.5f;
        
        [self.CDbackView addSubview:self.CDcontentImageView];
        [self.CDbackView addSubview:self.CDcontentLabel];
        [self.CDbackView addSubview:self.CDclockLabel];
        [self.CDbackView addSubview:self.CDpromptLabel];
        
        [self.CDbackView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(5);
            make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.bottom.equalTo(self.contentView).offset(-5);
        }];
        [self.CDcontentImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CDbackView).offset(16);
            make.centerY.equalTo(self.CDbackView);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        [self.CDcontentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.CDcontentImageView.mas_trailing).offset(10);
            make.centerY.equalTo(self.CDbackView);
            make.width.mas_equalTo(CDWIDTH - 81 - 10 - 50 - 16);
            make.height.mas_equalTo(20);
        }];
        [self.CDclockLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.CDbackView).offset(10);
            make.trailing.equalTo(self.CDbackView).offset(-16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(20);
        }];
        [self.CDpromptLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.CDclockLabel.mas_bottom).offset(5);
            make.trailing.equalTo(self.CDbackView).offset(-16);
            make.width.mas_equalTo(120);
            make.height.mas_equalTo(15);
            make.bottom.equalTo(self.CDbackView).offset(-10);
        }];
    }
    return self;
}
- (void)setCDmodel:(CDGuideModel *)CDmodel{
    _CDmodel = CDmodel;
    self.CDcontentImageView.image = [UIImage imageNamed:_CDmodel.CDimageContent];
    self.CDcontentLabel.text = _CDmodel.content;
    self.CDclockLabel.text = [NSString stringWithFormat:@"%ld %@",_CDmodel.CDclockContinuouslyNumber,NSLocalizedString(@"天", nil)];
}
#pragma mark - 属性懒加载
- (UIView *)CDbackView{
    if (!_CDbackView) {
        _CDbackView = [[UIView alloc] init];
        _CDbackView.backgroundColor = [UIColor whiteColor];
    }
    return _CDbackView;
}
- (UIImageView *)CDcontentImageView{
    if (!_CDcontentImageView) {
        _CDcontentImageView = [[UIImageView alloc] init];
    }
    return _CDcontentImageView;
}
- (UILabel *)CDcontentLabel{
    if (!_CDcontentLabel) {
        _CDcontentLabel = [[UILabel alloc] init];
        _CDcontentLabel.textColor = [UIColor blackColor];
        _CDcontentLabel.font = [UIFont boldSystemFontOfSize:15];
        _CDcontentLabel.numberOfLines = 0;
    }
    return _CDcontentLabel;
}
- (UILabel *)CDclockLabel{
    if (!_CDclockLabel) {
        _CDclockLabel = [[UILabel alloc] init];
        _CDclockLabel.textColor = [UIColor blackColor];
        _CDclockLabel.font = [UIFont boldSystemFontOfSize:16];
        _CDclockLabel.textAlignment = NSTextAlignmentRight;
        _CDclockLabel.numberOfLines = 0;
    }
    return _CDclockLabel;
}
- (UILabel *)CDpromptLabel{
    if (!_CDpromptLabel) {
        _CDpromptLabel = [[UILabel alloc] init];
        _CDpromptLabel.textColor = [UIColor blackColor];
        _CDpromptLabel.font = [UIFont systemFontOfSize:13];
        _CDpromptLabel.textAlignment = NSTextAlignmentRight;
        _CDpromptLabel.text = NSLocalizedString(@"共计坚持", nil);
        _CDpromptLabel.numberOfLines = 0;
    }
    return _CDpromptLabel;
}
@end
