//
//  GHDailyHabitsTableViewHeaderView.m
//  GoodHabit
//
//  Created by bykj on 2019/9/25.
//  Copyright © 2019 hb. All rights reserved.
//

#import "GHDailyHabitsTableViewHeaderView.h"
#import "GHGuideModel.h"

@interface GHDailyHabitsTableViewHeaderView()
@property(nonatomic, strong)NSMutableArray *viewDataArray;
@property(nonatomic, strong)UIView *line;
@end

@implementation GHDailyHabitsTableViewHeaderView
- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
    }
    return self;
}
- (void)setDataArray:(NSMutableArray *)dataArray{
    _dataArray = dataArray;
    for (UIButton *sender in self.viewDataArray) {
        [sender removeFromSuperview];
    }
    [self.viewDataArray removeAllObjects];
    if (_dataArray.count) {
    CGFloat leadingX = 16;
    CGFloat marginX = 10;
    CGFloat height = 30;
    CGFloat widthFront = 0;
    UIButton *lastbBtn;
    for (int i = 0; i < _dataArray.count; i++) {
        NSMutableDictionary *dic = _dataArray[i];
        NSUInteger periodCode = [[dic objectForKey:@"sectionCode"] integerValue];
        NSString *section = [dic objectForKey:@"section"];
        UIButton *btn = [[UIButton alloc] init];
        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [btn.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [btn setTitle:[NSString stringWithFormat:@"   %@   ",section] forState:UIControlStateNormal];
        btn.tag = periodCode;
        btn.layer.cornerRadius = 14.0f;
        btn.layer.masksToBounds = YES;
        if (i == 0) {
            btn.backgroundColor = [UIColor grayColor];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }else{
            btn.backgroundColor = GHH_Color(242, 242, 242, 1);
            [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        }
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        CGSize size = [btn sizeThatFits:CGSizeMake(MAXFLOAT, 60)];
        CGFloat width = size.width;
        [self.contentView addSubview:btn];
        [self.viewDataArray addObject:btn];
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.contentView).offset(leadingX + i * (marginX + widthFront));
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo(width);
            make.height.mas_equalTo(height);
        }];
        widthFront = width;
        if (i == self.dataArray.count - 1) {
            lastbBtn = btn;
        }
    }
    [self.contentView addSubview:self.line];
    [self.line mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(lastbBtn.mas_bottom).offset(20);
        make.trailing.equalTo(self.contentView);
        make.height.mas_equalTo(1);
        make.bottom.equalTo(self.contentView);
    }];
    }else{
        [MBProgressHUD GHshowReminderText:NSLocalizedString(@"暂无数据", nil)];
    }
}
- (void)setDataA:(NSArray *)dataA{
    _dataA = dataA;
}
- (void)adjustColor{
    for (int i = 0; i < self.viewDataArray.count; i++) {
           UIButton *btn = self.viewDataArray[i];
           if (btn.tag != self.selectIndex) {
           btn.backgroundColor = GHH_Color(242, 242, 242, 1);
           [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
           }else{
               btn.backgroundColor = [UIColor grayColor];
               [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
           }
       }
}
- (void)btnClick:(UIButton *)sender{
    NSInteger tag = sender.tag;
    self.selectIndex = tag;
//    sender.backgroundColor = [UIColor grayColor];
//    [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    for (int i = 0; i < self.viewDataArray.count; i++) {
//        UIButton *btn = self.viewDataArray[i];
//        if (btn.tag != tag) {
//        btn.backgroundColor = GHH_Color(242, 242, 242, 1);
//        [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
//        }
//    }
    self.periodCode = tag;
    for (int i = 0; i < self.dataArray.count; i++) {
        NSMutableDictionary *dic = self.dataArray[i];
        NSUInteger sectionCode = [[dic objectForKey:@"sectionCode"] integerValue];
        if (self.periodCode == sectionCode) {
            self.currentDataArray = [dic objectForKey:@"data"];
            break;
        }
    }
    if (self.selectSectionB) {
        self.selectSectionB(self);
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray *)viewDataArray{
    if (!_viewDataArray) {
        _viewDataArray = [[NSMutableArray alloc] init];
    }
    return _viewDataArray;
}
- (UIView *)line{
    if (!_line) {
        _line = [[UIView alloc] init];
        _line.backgroundColor = GHH_Color(242, 242, 242, 1);
    }
    return _line;
}
@end
