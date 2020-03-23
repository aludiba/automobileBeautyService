//
//  IARecordTableViewCell.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2020/1/3.
//  Copyright © 2020 com. All rights reserved.
//

#import "IARecordTableViewCell.h"
#import "IALuckyNumbersModel.h"
@interface IARecordTableViewCell()
@property(nonatomic, strong)UIView *IABackView;//背景板
@property(nonatomic, strong)UILabel *IAGeneratedTitleLabel;//当前生成数标题标签
@property(nonatomic, strong)UILabel *IAGeneratedNumberLabel;//当前生成数标签
@property(nonatomic, strong)UILabel *IAGenTimeLabel;//数字产生时间标签
@property(nonatomic, strong)UIButton *IADeleteButton;//删除
@end
@implementation IARecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self IASetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)IASetContentView{
    [self.contentView addSubview:self.IABackView];
    [self.IABackView addSubview:self.IAGenTimeLabel];
    [self.IABackView addSubview:self.IAGeneratedTitleLabel];
    [self.IABackView addSubview:self.IAGeneratedNumberLabel];
    [self.IABackView addSubview:self.IADeleteButton];
    
    [self.IABackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.bottom.equalTo(self.contentView);
    }];
    [self.IAGenTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.IABackView);
        make.top.equalTo(self.IABackView).offset(20);
        make.width.mas_equalTo(IAWIDTH);
        make.height.mas_equalTo(30);
    }];
    [self.IAGeneratedTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.IABackView);
        make.top.equalTo(self.IAGenTimeLabel.mas_bottom).offset(10);
        make.width.mas_equalTo(160);
        make.height.mas_equalTo(30);
    }];
    [self.IAGeneratedNumberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.IAGeneratedTitleLabel);
        make.top.equalTo(self.IAGeneratedTitleLabel.mas_bottom).offset(10);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(30);
    }];
    [self.IADeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.IABackView).offset(-16);
               make.top.equalTo(self.IAGeneratedTitleLabel);
               make.width.mas_equalTo(26);
               make.height.mas_equalTo(26);
    }];
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = IAH_Color(242, 242, 242, 1);
    [self.IABackView addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.IABackView);
               make.top.equalTo(self.IAGeneratedNumberLabel.mas_bottom).offset(29);
               make.trailing.equalTo(self.IABackView);
               make.height.mas_equalTo(1);
        make.bottom.equalTo(self.IABackView);
    }];
}
#pragma mark - 删除
- (void)IADeleteButtonAction{
    if (self.IARecordDeleteB) {
        self.IARecordDeleteB(self);
    }
}
- (void)setIAModel:(IALuckyNumbersModel *)IAModel{
    _IAModel = IAModel;
    self.IAGeneratedNumberLabel.text = [NSString stringWithFormat:@"%d",_IAModel.IAGeneratedNumber];
    self.IAGenTimeLabel.text = _IAModel.IAGenTimeString;
}
#pragma mark - 属性懒加载
- (UIView *)IABackView{
    if (!_IABackView) {
        _IABackView = [[UIView alloc] init];
        _IABackView.backgroundColor = [UIColor greenColor];
    }
    return _IABackView;
}
- (UILabel *)IAGeneratedTitleLabel{
    if (!_IAGeneratedTitleLabel) {
           _IAGeneratedTitleLabel = [[UILabel alloc] init];
           _IAGeneratedTitleLabel.textColor = [UIColor systemPurpleColor];
           _IAGeneratedTitleLabel.font = [UIFont boldSystemFontOfSize:22];
           _IAGeneratedTitleLabel.text = NSLocalizedString(@"幸运数字", nil);
           _IAGeneratedTitleLabel.textAlignment = NSTextAlignmentCenter;
           _IAGeneratedTitleLabel.numberOfLines = 0;
       }
       return _IAGeneratedTitleLabel;
}
- (UILabel *)IAGeneratedNumberLabel{
    if (!_IAGeneratedNumberLabel) {
        _IAGeneratedNumberLabel = [[UILabel alloc] init];
        _IAGeneratedNumberLabel.textColor = [UIColor systemRedColor];
        _IAGeneratedNumberLabel.font = [UIFont boldSystemFontOfSize:28];
        _IAGeneratedNumberLabel.textAlignment = NSTextAlignmentCenter;
        _IAGeneratedNumberLabel.numberOfLines = 0;
    }
    return _IAGeneratedNumberLabel;
}
- (UILabel *)IAGenTimeLabel{
    if (!_IAGenTimeLabel) {
        _IAGenTimeLabel = [[UILabel alloc] init];
        _IAGenTimeLabel.textColor = [UIColor systemBlueColor];
        _IAGenTimeLabel.font = [UIFont systemFontOfSize:20];
        _IAGenTimeLabel.textAlignment = NSTextAlignmentCenter;
        _IAGenTimeLabel.numberOfLines = 0;
    }
    return _IAGenTimeLabel;
}
- (UIButton *)IADeleteButton{
    if (!_IADeleteButton) {
        _IADeleteButton = [[UIButton alloc] init];
        [_IADeleteButton setImage:[UIImage imageNamed:@"IADelete"] forState:UIControlStateNormal];
        [_IADeleteButton addTarget:self action:@selector(IADeleteButtonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _IADeleteButton;
}
@end
