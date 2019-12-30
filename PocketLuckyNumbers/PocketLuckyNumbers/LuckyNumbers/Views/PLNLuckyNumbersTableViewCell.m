//
//  PLNLuckyNumbersTableViewCell.m
//  PocketLuckyNumbers
//
//  Created by 褚红彪 on 2019/12/29.
//  Copyright © 2019 com. All rights reserved.
//

#import "PLNLuckyNumbersTableViewCell.h"
@interface PLNLuckyNumbersTableViewCell()
@property(nonatomic, strong)UILabel *PLNMinTitleLbl;//最小数标题
@property(nonatomic, strong)UILabel *PLNMinContentLbl;//最小数内容
@property(nonatomic, strong)UILabel *PLNMaxTitleLbl;//最大数标题
@property(nonatomic, strong)UILabel *PLNMaxContentLbl;//最大数内容
@property(nonatomic, strong)UILabel *PLNGenerateNumberTitleLbl;//生成数量标题
@property(nonatomic, strong)UILabel *PLNGenerateNumberContentLbl;//生成数量内容
@property(nonatomic, strong)UILabel *PLNCurrentDigitalLbl;//当前数字
@property(nonatomic, strong)UILabel *PLNMessageLbl;//提醒信息
@end
@implementation PLNLuckyNumbersTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor systemRedColor];
        [self.contentView addSubview:self.PLNMinTitleLbl];
        [self.contentView addSubview:self.PLNMinContentLbl];
        [self.contentView addSubview:self.PLNMaxTitleLbl];
        [self.contentView addSubview:self.PLNMaxContentLbl];
        [self.contentView addSubview:self.PLNGenerateNumberTitleLbl];
        [self.contentView addSubview:self.PLNGenerateNumberContentLbl];
        [self.contentView addSubview:self.PLNCurrentDigitalLbl];
        [self.contentView addSubview:self.PLNMessageLbl];
        
        [self.PLNMinTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(16);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PLNWIDTH - 32 - 40) / 3);
            make.height.mas_equalTo(40);
        }];
        CGSize size = [self.PLNMinContentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
        [self.PLNMinContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.PLNMinTitleLbl);
            make.top.equalTo(self.PLNMinTitleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo(size.width);
            make.height.mas_equalTo(20);
        }];
        [self.PLNMaxTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PLNWIDTH - 32 - 40) / 3);
            make.height.mas_equalTo(40);

        }];
        [self.PLNMaxContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.PLNMaxTitleLbl);
            make.top.equalTo(self.PLNMaxTitleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo((PLNWIDTH - 32 - 40) / 3);
            make.height.mas_equalTo(20);
        }];
        [self.PLNGenerateNumberTitleLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.contentView).offset(-16);
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo((PLNWIDTH - 32 - 40) / 3);
            make.height.mas_equalTo(40);
        }];
        size = [self.PLNGenerateNumberContentLbl sizeThatFits:CGSizeMake(MAXFLOAT, 20)];
        [self.PLNGenerateNumberContentLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.PLNGenerateNumberTitleLbl);
            make.top.equalTo(self.PLNGenerateNumberTitleLbl.mas_bottom).offset(20);
            make.width.mas_equalTo(size.width);
            make.height.mas_equalTo(20);
        }];
        [self.PLNCurrentDigitalLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.contentView);
            make.centerY.equalTo(self.contentView);
            make.width.mas_equalTo(160);
            make.height.mas_equalTo(160);
        }];
        [self.PLNMessageLbl mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.PLNCurrentDigitalLbl.mas_bottom).offset(100);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.height.mas_equalTo(80);
            make.bottom.equalTo(self.contentView).offset(-20);
        }];
        UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(produceLuckyNumbersAction)];
        [self.contentView addGestureRecognizer:tapGes];
        [[UIApplication sharedApplication] setApplicationSupportsShakeToEdit:YES];
        [self becomeFirstResponder];
    }
    return self;
}
#pragma mark - action
- (void)produceLuckyNumbersAction{
    self.PLNLuckyNumber = [self getRandomNumber:0 to:100];
    self.PLNCurrentDigitalLbl.text = [NSString stringWithFormat:@"%d",self.PLNLuckyNumber];
    if (self.PLNLuckyNumbersB) {
        self.PLNLuckyNumbersB(self);
    }
}
#pragma mark - ShakeToEdit 摇动手机之后的回调方法
- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    //检测到摇动开始
    if (motion == UIEventSubtypeMotionShake){
      // your code
      NSLog(@"检测到摇动开始");
    }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    //摇动取消
    NSLog(@"摇动取消");
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event{
    //摇动结束
    if (event.subtype == UIEventSubtypeMotionShake)
    {
        // your code
        NSLog(@"摇动结束");
        self.PLNLuckyNumber = [self getRandomNumber:0 to:100];
        self.PLNCurrentDigitalLbl.text = [NSString stringWithFormat:@"%d",self.PLNLuckyNumber];
        if (self.PLNLuckyNumbersB) {
            self.PLNLuckyNumbersB(self);
        }
    }
    
}
- (int)getRandomNumber:(int)from to:(int)to{
    return (int)(rand() % (to - from + 1) + from);
}
#pragma mark - 属性懒加载
- (UILabel *)PLNMinTitleLbl{
    if (!_PLNMinTitleLbl) {
        _PLNMinTitleLbl = [[UILabel alloc] init];
        _PLNMinTitleLbl.textColor = [UIColor whiteColor];
        _PLNMinTitleLbl.font = [UIFont systemFontOfSize:15];
        _PLNMinTitleLbl.text = NSLocalizedString(@"最小数", nil);
        _PLNMinTitleLbl.numberOfLines = 0;
    }
    return _PLNMinTitleLbl;
}
- (UILabel *)PLNMinContentLbl{
    if (!_PLNMinContentLbl) {
        _PLNMinContentLbl = [[UILabel alloc] init];
        _PLNMinContentLbl.textColor = [UIColor whiteColor];
        _PLNMinContentLbl.font = [UIFont systemFontOfSize:18];
        _PLNMinContentLbl.text = @"1";
        _PLNMinContentLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PLNMinContentLbl;
}
- (UILabel *)PLNMaxTitleLbl{
    if (!_PLNMaxTitleLbl) {
        _PLNMaxTitleLbl = [[UILabel alloc] init];
        _PLNMaxTitleLbl.textColor = [UIColor whiteColor];
        _PLNMaxTitleLbl.font = [UIFont systemFontOfSize:15];
        _PLNMaxTitleLbl.textAlignment = NSTextAlignmentCenter;
        _PLNMaxTitleLbl.text = NSLocalizedString(@"最大数", nil);
        _PLNMaxTitleLbl.numberOfLines = 0;
    }
    return _PLNMaxTitleLbl;
}
- (UILabel *)PLNMaxContentLbl{
    if (!_PLNMaxContentLbl) {
        _PLNMaxContentLbl = [[UILabel alloc] init];
        _PLNMaxContentLbl.textColor = [UIColor whiteColor];
        _PLNMaxContentLbl.font = [UIFont systemFontOfSize:18];
        _PLNMaxContentLbl.textAlignment = NSTextAlignmentCenter;
        _PLNMaxContentLbl.text = @"100";
    }
    return _PLNMaxContentLbl;
}
- (UILabel *)PLNGenerateNumberTitleLbl{
    if (!_PLNGenerateNumberTitleLbl) {
        _PLNGenerateNumberTitleLbl = [[UILabel alloc] init];
        _PLNGenerateNumberTitleLbl.textColor = [UIColor whiteColor];
        _PLNGenerateNumberTitleLbl.font = [UIFont systemFontOfSize:15];
        _PLNGenerateNumberTitleLbl.textAlignment = NSTextAlignmentRight;
        _PLNGenerateNumberTitleLbl.text = NSLocalizedString(@"生成数量", nil);
        _PLNGenerateNumberTitleLbl.numberOfLines = 0;
    }
    return _PLNGenerateNumberTitleLbl;
}
- (UILabel *)PLNGenerateNumberContentLbl{
    if (!_PLNGenerateNumberContentLbl) {
        _PLNGenerateNumberContentLbl = [[UILabel alloc] init];
        _PLNGenerateNumberContentLbl.textColor = [UIColor whiteColor];
        _PLNGenerateNumberContentLbl.font = [UIFont systemFontOfSize:18];
        _PLNGenerateNumberContentLbl.textAlignment = NSTextAlignmentRight;
        _PLNGenerateNumberContentLbl.text = @"1";
        _PLNGenerateNumberContentLbl.textAlignment = NSTextAlignmentCenter;
    }
    return _PLNGenerateNumberContentLbl;
}
- (UILabel *)PLNCurrentDigitalLbl{
    if (!_PLNCurrentDigitalLbl) {
        _PLNCurrentDigitalLbl = [[UILabel alloc] init];
        _PLNCurrentDigitalLbl.textColor = [UIColor whiteColor];
        _PLNCurrentDigitalLbl.font = [UIFont boldSystemFontOfSize:50];
        _PLNCurrentDigitalLbl.textAlignment = NSTextAlignmentCenter;
        _PLNCurrentDigitalLbl.text = @"0";
    }
    return _PLNCurrentDigitalLbl;
}
- (UILabel *)PLNMessageLbl{
    if (!_PLNMessageLbl) {
        _PLNMessageLbl = [[UILabel alloc] init];
        _PLNMessageLbl.textColor = [UIColor systemGreenColor];
        _PLNMessageLbl.font = [UIFont systemFontOfSize:20];
        _PLNMessageLbl.text = NSLocalizedString(@"点击屏幕或摇一摇生成幸运数", nil);
        _PLNMessageLbl.textAlignment = NSTextAlignmentCenter;
        _PLNMessageLbl.numberOfLines = 0;
    }
    return _PLNMessageLbl;
}
@end
