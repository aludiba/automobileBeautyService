//
//  PLNRecordTableViewCell.m
//  PocketLuckyNumbers
//
//  Created by bykj on 2020/1/3.
//  Copyright © 2020 com. All rights reserved.
//

#import "PLNRecordTableViewCell.h"
#import "PLNLuckyNumbersModel.h"
@interface PLNRecordTableViewCell()
@property(nonatomic, strong)UIView *PLNBackView;//背景板
@property(nonatomic, strong)UILabel *PLNGeneratedTitleLabel;//当前生成数标题标签
@property(nonatomic, strong)UILabel *PLNGeneratedNumberLabel;//当前生成数标签
@property(nonatomic, strong)UILabel *PLNGenTimeLabel;//数字产生时间标签
@property(nonatomic, strong)UIButton *PLNDeleteButton;//删除
@end
@implementation PLNRecordTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self PLNSetContentView];
    }
    return self;
}
#pragma mark - actions
- (void)PLNSetContentView{
    [self.contentView addSubview:self.PLNBackView];
    [self.PLNBackView addSubview:self.PLNGenTimeLabel];
    [self.PLNBackView addSubview:self.PLNGeneratedTitleLabel];
    [self.PLNBackView addSubview:self.PLNGeneratedNumberLabel];
    [self.PLNBackView addSubview:self.PLNDeleteButton];
    
    [self.PLNBackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(self.contentView);
        make.trailing.equalTo(self.contentView);
        make.bottom.equalTo(self.contentView);
    }];
    [self.PLNGenTimeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.PLNBackView);
        make.top.equalTo(self.PLNBackView).offset(20);
        make.width.mas_equalTo(PLNWIDTH);
        make.height.mas_equalTo(30);
    }];
    [self.PLNGeneratedTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.PLNBackView);
        make.top.equalTo(self.PLNGenTimeLabel.mas_bottom).offset(10);
        make.width.mas_equalTo(160);
        make.height.mas_equalTo(30);
    }];
    [self.PLNGeneratedNumberLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.PLNGeneratedTitleLabel);
        make.top.equalTo(self.PLNGeneratedTitleLabel.mas_bottom).offset(10);
        make.width.mas_equalTo(90);
        make.height.mas_equalTo(30);
    }];
    [self.PLNDeleteButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.trailing.equalTo(self.PLNBackView).offset(-16);
               make.top.equalTo(self.PLNGeneratedTitleLabel);
               make.width.mas_equalTo(26);
               make.height.mas_equalTo(26);
    }];
    UIView *line = [[UIView alloc] init];
    line.backgroundColor = [UIColor grayColor];
    [self.PLNBackView addSubview:line];
    [line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.PLNBackView);
               make.top.equalTo(self.PLNGeneratedNumberLabel.mas_bottom).offset(29);
               make.trailing.equalTo(self.PLNBackView);
               make.height.mas_equalTo(1);
        make.bottom.equalTo(self.PLNBackView);
    }];
}
#pragma mark - 删除
- (void)PLNDeleteButtonAction{
    if (self.PLNRecordDeleteB) {
        self.PLNRecordDeleteB(self);
    }
}
- (void)setPLNModel:(PLNLuckyNumbersModel *)PLNModel{
    _PLNModel = PLNModel;
    self.PLNGeneratedNumberLabel.text = [NSString stringWithFormat:@"%d",_PLNModel.PLNGeneratedNumber];
    self.PLNGenTimeLabel.text = _PLNModel.PLNGenTimeString;
}
#pragma mark - 属性懒加载
- (UIView *)PLNBackView{
    if (!_PLNBackView) {
        _PLNBackView = [[UIView alloc] init];
        _PLNBackView.backgroundColor = [UIColor systemGreenColor];
    }
    return _PLNBackView;
}
- (UILabel *)PLNGeneratedTitleLabel{
    if (!_PLNGeneratedTitleLabel) {
           _PLNGeneratedTitleLabel = [[UILabel alloc] init];
           _PLNGeneratedTitleLabel.textColor = [UIColor systemPurpleColor];
           _PLNGeneratedTitleLabel.font = [UIFont boldSystemFontOfSize:22];
           _PLNGeneratedTitleLabel.text = NSLocalizedString(@"幸运数字", nil);
           _PLNGeneratedTitleLabel.textAlignment = NSTextAlignmentCenter;
           _PLNGeneratedTitleLabel.numberOfLines = 0;
       }
       return _PLNGeneratedTitleLabel;
}
- (UILabel *)PLNGeneratedNumberLabel{
    if (!_PLNGeneratedNumberLabel) {
        _PLNGeneratedNumberLabel = [[UILabel alloc] init];
        _PLNGeneratedNumberLabel.textColor = [UIColor systemRedColor];
        _PLNGeneratedNumberLabel.font = [UIFont boldSystemFontOfSize:28];
        _PLNGeneratedNumberLabel.textAlignment = NSTextAlignmentCenter;
        _PLNGeneratedNumberLabel.numberOfLines = 0;
    }
    return _PLNGeneratedNumberLabel;
}
- (UILabel *)PLNGenTimeLabel{
    if (!_PLNGenTimeLabel) {
        _PLNGenTimeLabel = [[UILabel alloc] init];
        _PLNGenTimeLabel.textColor = [UIColor systemBlueColor];
        _PLNGenTimeLabel.font = [UIFont systemFontOfSize:20];
        _PLNGenTimeLabel.textAlignment = NSTextAlignmentCenter;
        _PLNGenTimeLabel.numberOfLines = 0;
    }
    return _PLNGenTimeLabel;
}
- (UIButton *)PLNDeleteButton{
    if (!_PLNDeleteButton) {
        _PLNDeleteButton = [[UIButton alloc] init];
        [_PLNDeleteButton setImage:[UIImage imageNamed:@"PLNDelete"] forState:UIControlStateNormal];
        [_PLNDeleteButton addTarget:self action:@selector(PLNDeleteButtonAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PLNDeleteButton;
}
@end
