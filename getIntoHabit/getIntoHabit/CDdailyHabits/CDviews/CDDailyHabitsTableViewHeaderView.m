//
//  CDDailyHabitsTableViewHeaderView.m
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import "CDDailyHabitsTableViewHeaderView.h"
#import "CDGuideModel.h"

@interface CDDailyHabitsTableViewHeaderView()
@property(nonatomic, strong)NSMutableArray *CDviewDataArray;
@property(nonatomic, strong)UIView *CDline;
@end

@implementation CDDailyHabitsTableViewHeaderView
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
- (void)setCDdataArray:(NSMutableArray *)CDdataArray{
    _CDdataArray = CDdataArray;
    for (UIButton *sender in self.CDviewDataArray) {
        [sender removeFromSuperview];
    }
    [self.CDviewDataArray removeAllObjects];
    if (_CDdataArray.count) {
    CGFloat leadingX = 16;
    CGFloat marginX = 10;
    CGFloat height = 30;
    CGFloat widthFront = 0;
    UIButton *lastbBtn;
    for (int i = 0; i < _CDdataArray.count; i++) {
        NSMutableDictionary *dic = _CDdataArray[i];
        NSUInteger CDperiodCode = [[dic objectForKey:@"sectionCode"] integerValue];
        NSString *section = [dic objectForKey:@"section"];
        UIButton *btn = [[UIButton alloc] init];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [btn setTitle:[NSString stringWithFormat:@"   %@   ",section] forState:UIControlStateNormal];
        btn.tag = CDperiodCode;
        btn.layer.cornerRadius = 14.0f;
        btn.layer.masksToBounds = YES;
        if (i == 0) {
            btn.backgroundColor = [UIColor grayColor];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }else{
            btn.backgroundColor = CDH_Color(242, 242, 242, 1);
            [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        }
        [btn addTarget:self action:@selector(CDbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        CGSize size = [btn sizeThatFits:CGSizeMake(MAXFLOAT, 60)];
        CGFloat width = size.width;
        [self.contentView addSubview:btn];
        [self.CDviewDataArray addObject:btn];
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(leadingX + i * (marginX + widthFront));
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo(width);
            make.height.mas_equalTo(height);
        }];
        widthFront = width;
        if (i == self.CDdataArray.count - 1) {
            lastbBtn = btn;
        }
    }
    [self.contentView addSubview:self.CDline];
    [self.CDline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(lastbBtn.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
        make.bottom.equalTo(self.contentView);
    }];
    }else{
        [MBProgressHUD CDshowReminderText:NSLocalizedString(@"暂无数据", nil)];
    }
}
- (void)setDataA:(NSArray *)dataA{
    _dataA = dataA;
}
- (void)CDadjustColor{
    for (int i = 0; i < self.CDviewDataArray.count; i++) {
           UIButton *btn = self.CDviewDataArray[i];
           if (btn.tag != self.CDselectIndex) {
           btn.backgroundColor = CDH_Color(242, 242, 242, 1);
           [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
           }else{
               btn.backgroundColor = [UIColor grayColor];
               [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
           }
       }
}
- (void)CDbtnClick:(UIButton *)sender{
    NSInteger tag = sender.tag;
    self.CDselectIndex = tag;
//    sender.backgroundColor = [UIColor grayColor];
//    [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    for (int i = 0; i < self.CDviewDataArray.count; i++) {
//        UIButton *btn = self.CDviewDataArray[i];
//        if (btn.tag != tag) {
//        btn.backgroundColor = CDH_Color(242, 242, 242, 1);
//        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//        }
//    }
    self.CDperiodCode = tag;
    for (int i = 0; i < self.CDdataArray.count; i++) {
        NSMutableDictionary *dic = self.CDdataArray[i];
        NSUInteger sectionCode = [[dic objectForKey:@"sectionCode"] integerValue];
        if (self.CDperiodCode == sectionCode) {
            self.currentDataArray = [dic objectForKey:@"data"];
            break;
        }
    }
    if (self.selectSectionB) {
        self.selectSectionB(self);
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)CDviewDataArray{
    if (!_CDviewDataArray) {
        _CDviewDataArray = [[NSMutableArray alloc] init];
    }
    return _CDviewDataArray;
}
- (UIView *)CDline{
    if (!_CDline) {
        _CDline = [[UIView alloc] init];
        _CDline.backgroundColor = CDH_Color(242, 242, 242, 1);
    }
    return _CDline;
}
@end
