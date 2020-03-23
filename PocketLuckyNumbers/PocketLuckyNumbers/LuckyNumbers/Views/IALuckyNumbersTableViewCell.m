//
//  IALuckyNumbersTableViewCell.m
//  PocketLuckyNumbers
//
//  Created by 褚红彪 on 2019/12/29.
//  Copyright © 2019 com. All rights reserved.
//

#import "IALuckyNumbersTableViewCell.h"
#import "IALuckyNumbersModel.h"
@interface IALuckyNumbersTableViewCell()
@property(nonatomic, strong)UILabel *IAMinTitleLbl;//最小数标题
@property(nonatomic, strong)UILabel *IAMinContentLbl;//最小数内容
@property(nonatomic, strong)UILabel *IAMaxTitleLbl;//最大数标题
@property(nonatomic, strong)UILabel *IAMaxContentLbl;//最大数内容
@property(nonatomic, strong)UILabel *IAGenerateNumberTitleLbl;//生成数量标题
@property(nonatomic, strong)UILabel *IAGenerateNumberContentLbl;//生成数量内容
@property(nonatomic, strong)UILabel *IACurrentDigitalLbl;//当前数字
@property(nonatomic, strong)UILabel *IAMessageLbl;//提醒信息
@end
@implementation IALuckyNumbersTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:self.IAMinTitleLbl];
        [self.contentView addSubview:self.IAMinContentLbl];
        [self.contentView addSubview:self.IAMaxTitleLbl];
        [self.contentView addSubview:self.IAMaxContentLbl];
        [self.contentView addSubview:self.IAGenerateNumberTitleLbl];
        [self.contentView addSubview:self.IAGenerateNumberContentLbl];
        [self.contentView addSubview:self.IACurrentDigitalLbl];
        [self.contentView addSubview:self.IAMessageLbl];
        
        [self.IAMinTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((IAWIDTH - 32 - 40) / 3);
            make.height.mas_equalTo(40);
        }];
        CGSize size = [self.IAMinContentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
        [self.IAMinContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.IAMinTitleLbl);
            make.top.equalTo(self.IAMinTitleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo(size.width);
            make.height.mas_equalTo(20);
        }];
        [self.IAMaxTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((IAWIDTH - 32 - 40) / 3);
            make.height.mas_equalTo(40);

        }];
        [self.IAMaxContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.IAMaxTitleLbl);
            make.top.equalTo(self.IAMaxTitleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo((IAWIDTH - 32 - 40) / 3);
            make.height.mas_equalTo(20);
        }];
        [self.IAGenerateNumberTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((IAWIDTH - 32 - 40) / 3);
            make.height.mas_equalTo(40);
        }];
        size = [self.IAGenerateNumberContentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
        [self.IAGenerateNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.IAGenerateNumberTitleLbl);
            make.top.equalTo(self.IAGenerateNumberTitleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo(size.width);
            make.height.mas_equalTo(20);
        }];
        [self.IACurrentDigitalLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(160);
            make.height.mas_equalTo(160);
        }];
        [self.IAMessageLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.IACurrentDigitalLbl.mas_bottom).offset(50);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(80);
            make.bottom.equalTo(self.contentView).offset(-20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(produceLuckyNumbersAction)];
        [self.contentView addGestureRecognizer:tapGes];
    }
    return self;
}
#pragma mark - action
- (void)setModel:(IALuckyNumbersModel *)model{
    _model = model;
    self.IALuckyNumber = _model.IAGeneratedNumber;
    self.IACurrentDigitalLbl.text = [NSString stringWithFormat:@"%d",self.IALuckyNumber];
}
- (void)produceLuckyNumbersAction{
    self.IALuckyNumber = [self getRandomNumber:0 to:100];
    self.IACurrentDigitalLbl.text = [NSString stringWithFormat:@"%d",self.IALuckyNumber];
    if (self.IALuckyNumbersB) {
        self.IALuckyNumbersB(self);
    }
}
- (int)getRandomNumber:(int)from to:(int)to{
    return (int)(rand() % (to - from + 1) + from);
}
#pragma mark - 属性懒加载
- (UILabel *)IAMinTitleLbl{
    if (!_IAMinTitleLbl) {
        _IAMinTitleLbl = [[UILabel alloc] init];
        _IAMinTitleLbl.textColor = [UIColor whiteColor];
        _IAMinTitleLbl.font = [UIFont systemFontOfSize:15];
        _IAMinTitleLbl.text = NSLocalizedString(@"最小数", nil);
        _IAMinTitleLbl.numberOfLines = 0;
    }
    return _IAMinTitleLbl;
}
- (UILabel *)IAMinContentLbl{
    if (!_IAMinContentLbl) {
        _IAMinContentLbl = [[UILabel alloc] init];
        _IAMinContentLbl.textColor = [UIColor whiteColor];
        _IAMinContentLbl.font = [UIFont systemFontOfSize:18];
        _IAMinContentLbl.text = @"1";
        _IAMinContentLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _IAMinContentLbl;
}
- (UILabel *)IAMaxTitleLbl{
    if (!_IAMaxTitleLbl) {
        _IAMaxTitleLbl = [[UILabel alloc] init];
        _IAMaxTitleLbl.textColor = [UIColor whiteColor];
        _IAMaxTitleLbl.font = [UIFont systemFontOfSize:15];
        _IAMaxTitleLbl.textAlignment = NSTextAlignmentCenter;
        _IAMaxTitleLbl.text = NSLocalizedString(@"最大数", nil);
        _IAMaxTitleLbl.numberOfLines = 0;
    }
    return _IAMaxTitleLbl;
}
- (UILabel *)IAMaxContentLbl{
    if (!_IAMaxContentLbl) {
        _IAMaxContentLbl = [[UILabel alloc] init];
        _IAMaxContentLbl.textColor = [UIColor whiteColor];
        _IAMaxContentLbl.font = [UIFont systemFontOfSize:18];
        _IAMaxContentLbl.textAlignment = NSTextAlignmentCenter;
        _IAMaxContentLbl.text = @"100";
    }
    return _IAMaxContentLbl;
}
- (UILabel *)IAGenerateNumberTitleLbl{
    if (!_IAGenerateNumberTitleLbl) {
        _IAGenerateNumberTitleLbl = [[UILabel alloc] init];
        _IAGenerateNumberTitleLbl.textColor = [UIColor whiteColor];
        _IAGenerateNumberTitleLbl.font = [UIFont systemFontOfSize:15];
        _IAGenerateNumberTitleLbl.textAlignment = NSTextAlignmentRight;
        _IAGenerateNumberTitleLbl.text = NSLocalizedString(@"生成数量", nil);
        _IAGenerateNumberTitleLbl.numberOfLines = 0;
    }
    return _IAGenerateNumberTitleLbl;
}
- (UILabel *)IAGenerateNumberContentLbl{
    if (!_IAGenerateNumberContentLbl) {
        _IAGenerateNumberContentLbl = [[UILabel alloc] init];
        _IAGenerateNumberContentLbl.textColor = [UIColor whiteColor];
        _IAGenerateNumberContentLbl.font = [UIFont systemFontOfSize:18];
        _IAGenerateNumberContentLbl.textAlignment = NSTextAlignmentRight;
        _IAGenerateNumberContentLbl.text = @"1";
        _IAGenerateNumberContentLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _IAGenerateNumberContentLbl;
}
- (UILabel *)IACurrentDigitalLbl{
    if (!_IACurrentDigitalLbl) {
        _IACurrentDigitalLbl = [[UILabel alloc] init];
        _IACurrentDigitalLbl.textColor = [UIColor whiteColor];
        _IACurrentDigitalLbl.font = [UIFont boldSystemFontOfSize:50];
        _IACurrentDigitalLbl.textAlignment = NSTextAlignmentCenter;
        _IACurrentDigitalLbl.text = @"0";
    }
    return _IACurrentDigitalLbl;
}
- (UILabel *)IAMessageLbl{
    if (!_IAMessageLbl) {
        _IAMessageLbl = [[UILabel alloc] init];
        _IAMessageLbl.textColor = [UIColor systemGreenColor];
        _IAMessageLbl.font = [UIFont systemFontOfSize:20];
        _IAMessageLbl.text = NSLocalizedString(@"点击屏幕或摇一摇生成幸运数", nil);
        _IAMessageLbl.textAlignment = NSTextAlignmentCenter;
        _IAMessageLbl.numberOfLines = 0;
    }
    return _IAMessageLbl;
}
@end
