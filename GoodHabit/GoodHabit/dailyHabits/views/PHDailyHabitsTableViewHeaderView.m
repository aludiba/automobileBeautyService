//
//  PHDailyHabitsTableViewHeaderView.m
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import "PHDailyHabitsTableViewHeaderView.h"
#import "PHGuideModel.h"

@interface PHDailyHabitsTableViewHeaderView()
@property(nonatomic, strong)NSMutableArray *PHviewDataArray;
@property(nonatomic, strong)UIView *PHline;
@end

@implementation PHDailyHabitsTableViewHeaderView
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
- (void)setPHdataArray:(NSMutableArray *)PHdataArray{
    _PHdataArray = PHdataArray;
    for (UIButton *sender in self.PHviewDataArray) {
        [sender removeFromSuperview];
    }
    [self.PHviewDataArray removeAllObjects];
    if (_PHdataArray.count) {
    CGFloat leadingX = 16;
    CGFloat marginX = 10;
    CGFloat height = 30;
    CGFloat widthFront = 0;
    UIButton *lastbBtn;
    for (int i = 0; i < _PHdataArray.count; i++) {
        NSMutableDictionary *dic = _PHdataArray[i];
        NSUInteger PHperiodCode = [[dic objectForKey:@"sectionCode"] integerValue];
        NSString *section = [dic objectForKey:@"section"];
        UIButton *btn = [[UIButton alloc] init];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [btn setTitle:[NSString stringWithFormat:@"   %@   ",section] forState:UIControlStateNormal];
        btn.tag = PHperiodCode;
        btn.layer.cornerRadius = 14.0f;
        btn.layer.masksToBounds = YES;
        if (i == 0) {
            btn.backgroundColor = [UIColor grayColor];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }else{
            btn.backgroundColor = PHH_Color(242, 242, 242, 1);
            [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        }
        [btn addTarget:self action:@selector(PHbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        CGSize size = [btn sizeThatFits:CGSizeMake(MAXFLOAT, 60)];
        CGFloat width = size.width;
        [self.contentView addSubview:btn];
        [self.PHviewDataArray addObject:btn];
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(leadingX + i * (marginX + widthFront));
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo(width);
            make.height.mas_equalTo(height);
        }];
        widthFront = width;
        if (i == self.PHdataArray.count - 1) {
            lastbBtn = btn;
        }
    }
    [self.contentView addSubview:self.PHline];
    [self.PHline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(lastbBtn.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
        make.bottom.equalTo(self.contentView);
    }];
    }else{
        [MBProgressHUD PHshowReminderText:NSLocalizedString(@"暂无数据", nil)];
    }
}
- (void)setDataA:(NSArray *)dataA{
    _dataA = dataA;
}
- (void)PHadjustColor{
    for (int i = 0; i < self.PHviewDataArray.count; i++) {
           UIButton *btn = self.PHviewDataArray[i];
           if (btn.tag != self.PHselectIndex) {
           btn.backgroundColor = PHH_Color(242, 242, 242, 1);
           [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
           }else{
               btn.backgroundColor = [UIColor grayColor];
               [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
           }
       }
}
- (void)PHbtnClick:(UIButton *)sender{
    NSInteger tag = sender.tag;
    self.PHselectIndex = tag;
//    sender.backgroundColor = [UIColor grayColor];
//    [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    for (int i = 0; i < self.PHviewDataArray.count; i++) {
//        UIButton *btn = self.PHviewDataArray[i];
//        if (btn.tag != tag) {
//        btn.backgroundColor = PHH_Color(242, 242, 242, 1);
//        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//        }
//    }
    self.PHperiodCode = tag;
    for (int i = 0; i < self.PHdataArray.count; i++) {
        NSMutableDictionary *dic = self.PHdataArray[i];
        NSUInteger sectionCode = [[dic objectForKey:@"sectionCode"] integerValue];
        if (self.PHperiodCode == sectionCode) {
            self.currentDataArray = [dic objectForKey:@"data"];
            break;
        }
    }
    if (self.selectSectionB) {
        self.selectSectionB(self);
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)PHviewDataArray{
    if (!_PHviewDataArray) {
        _PHviewDataArray = [[NSMutableArray alloc] init];
    }
    return _PHviewDataArray;
}
- (UIView *)PHline{
    if (!_PHline) {
        _PHline = [[UIView alloc] init];
        _PHline.backgroundColor = PHH_Color(242, 242, 242, 1);
    }
    return _PHline;
}
@end
