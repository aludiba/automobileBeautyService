//
//  GHDailyHabitsTableViewCell.m
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHDailyHabitsTableViewCell.h"
#import "GHGuideModel.h"
@interface GHDailyHabitsTableViewCell()
@property(nonatomic, strong)UIView *backView;
@property(nonatomic, strong)UIImageView *contentImageView;
@property(nonatomic, strong)UILabel *contentLabel;
@property(nonatomic, strong)UILabel *clockLabel;
@property(nonatomic, strong)UILabel *promptLabel;
@end
@implementation GHDailyHabitsTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = GHH_Color(107, 208, 227, 1);
        [self.contentView addSubview:self.backView];
        self.backView.backgroundColor = [UIColor whiteColor];
        self.backView.layer.cornerRadius = 8.0f;
        self.backView.layer.masksToBounds = YES;
        self.backView.layer.borderColor = [UIColor blackColor].CGColor;
        self.backView.layer.borderWidth = 2.0f;
        
        [self.backView addSubview:self.contentImageView];
        [self.backView addSubview:self.contentLabel];
        [self.backView addSubview:self.clockLabel];
        [self.backView addSubview:self.promptLabel];
        
        [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(5);
make.leading.equalTo(self.contentView).offset(16);
            make.trailing.equalTo(self.contentView).offset(-16);
            make.bottom.equalTo(self.contentView).offset(-5);
        }];
        [self.contentImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.backView).offset(16);
            make.centerY.equalTo(self.backView);
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(50);
        }];
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentImageView.mas_trailing).offset(10);
            make.centerY.equalTo(self.backView);
            make.width.mas_equalTo(GHWIDTH - 81 - 10 - 50 - 16);
            make.height.mas_equalTo(20);
        }];
        [self.clockLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.backView).offset(10);
            make.trailing.equalTo(self.backView).offset(-16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(20);
        }];
        [self.promptLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.clockLabel.mas_bottom).offset(5);
            make.trailing.equalTo(self.backView).offset(-16);
            make.width.mas_equalTo(80);
            make.height.mas_equalTo(15);
            make.bottom.equalTo(self.backView).offset(-10);
        }];
    }
    return self;
}
- (void)setModel:(GHGuideModel *)model{
    _model = model;
    self.contentImageView.image = [UIImage imageNamed:_model.imageContent];
    self.contentLabel.text = _model.content;
    self.clockLabel.text = [NSString stringWithFormat:@"%ld %@",_model.clockContinuouslyNumber,NSLocalizedString(@"天", nil)];
}
#pragma mark - 属性懒加载
- (UIView *)backView{
    if (!_backView) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = [UIColor whiteColor];
    }
    return _backView;
}
- (UIImageView *)contentImageView{
    if (!_contentImageView) {
        _contentImageView = [[UIImageView alloc] init];
    }
    return _contentImageView;
}
- (UILabel *)contentLabel{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blackColor];
        _contentLabel.font = [UIFont boldSystemFontOfSize:15];
        _contentLabel.numberOfLines = 0;
    }
    return _contentLabel;
}
- (UILabel *)clockLabel{
    if (!_clockLabel) {
        _clockLabel = [[UILabel alloc] init];
        _clockLabel.textColor = [UIColor blackColor];
        _clockLabel.font = [UIFont boldSystemFontOfSize:16];
        _clockLabel.textAlignment = NSTextAlignmentRight;
        _clockLabel.numberOfLines = 0;
    }
    return _clockLabel;
}
- (UILabel *)promptLabel{
    if (!_promptLabel) {
        _promptLabel = [[UILabel alloc] init];
        _promptLabel.textColor = [UIColor blackColor];
        _promptLabel.font = [UIFont systemFontOfSize:13];
        _promptLabel.textAlignment = NSTextAlignmentRight;
        _promptLabel.text = NSLocalizedString(@"共计坚持", nil);
        _promptLabel.numberOfLines = 0;
    }
    return _promptLabel;
}
@end
