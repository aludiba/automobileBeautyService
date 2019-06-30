//
//  mag5sTimeView.m
//  workshopManagement5s
//
//  Created by 褚红彪 on 2019/6/30.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "mag5sTimeView.h"
#import "mag5sChildrenTimeView.h"
#import "mag5sTimeButton.h"
static CGFloat marginX = 71;
static CGFloat marginY = 108.5;
@interface mag5sTimeView()<UIScrollViewDelegate>
@property(nonatomic, strong)UIView *reproductionView;
@property(nonatomic, strong)UIScrollView *scrollView;
@property(nonatomic, strong)UIView *backView;
@property(nonatomic, strong)NSDate *nowDate;
@property(nonatomic, strong)NSArray *weeksArray;
@property(nonatomic, strong)NSArray *nowWeeks;
@end
@implementation mag5sTimeView
- (instancetype)initCurrentDate:(NSString *)datestring{
    if (self = [super init]) {
        if (datestring.length) {
            self.currentDateString = datestring;
        }
        [self getWeekDate];
        [self addSubview:self.reproductionView];
        [self addSubview:self.scrollView];
        [self.reproductionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.mas_equalTo(70);
            make.leading.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
        }];
        [self.scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self);
            make.leading.equalTo(self);
            make.trailing.equalTo(self);
            make.bottom.equalTo(self);
        }];
        [self.scrollView addSubview:self.backView];
        [self.backView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self.scrollView);
            make.height.equalTo(self.scrollView);
            make.width.mas_equalTo(0);
        }];
        [self setContent];
    }
    return self;
}
- (void)getWeekDate{
    //获取当周日期
    self.nowWeeks = [CalendarTool getNowWeekDate:self.nowDate];
    if (!self.currentDateString.length) {
        self.currentDateString = [mag5sUIUtilities mag5sformattedTimeStringWithDate:_nowDate format:@"yyyy-MM-dd"];
    }
}
- (void)setContent{
    NSUInteger count = 5;
    __block CGFloat marginLeading = 0;
    __block CGFloat margin = 0;
    if (count == 10) {
        marginLeading = 7;
    }else{
        marginLeading = (mag5sWIDTH - 305) / 6;
        margin = marginLeading - 10;
    }
    for (int i = 0; i < count; i++) {
        mag5sChildrenTimeView *childView = [[mag5sChildrenTimeView alloc] init];
        childView.childBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.1396059782608696/1.0];;
        childView.childBtn.dateLbl.textColor = [UIColor whiteColor];
        childView.childBtn.tag = 100 + i;
        [childView.childBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.btnArray addObject:childView];
        [self.backView addSubview:childView];
        [childView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.backView).offset((marginX + margin) * i + marginLeading);
            make.centerY.equalTo(self.backView);
            make.width.mas_equalTo(marginX);
            make.height.mas_equalTo(marginY);
        }];
    }
    [self.backView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(count * marginX + (count - 1) * margin + marginLeading * 2);
    }];
    [self.backView layoutIfNeeded];
    [self setNowWeekContent];
    for (int i = 0; i < self.btnArray.count; i++) {
        mag5sChildrenTimeView *childView = self.btnArray[i];
        if ([self.currentDateString isEqualToString: childView.dateString]) {
            childView.childBtn.backgroundColor = [UIColor whiteColor];
            childView.childBtn.dateLbl.textColor = [UIColor colorWithRed:68/255.0 green:92/255.0 blue:149/255.0 alpha:1/1.0];
        }
    }
    [self layoutSubviews];
}
- (void)setNowWeekContent{
    for (int i = 0; i < self.nowWeeks.count - 2; i++) {
        mag5sChildrenTimeView *childView = self.btnArray[i];
        NSString *dateStr = self.nowWeeks[i];
        childView.dateString = dateStr;
        childView.childBtn.dateString = dateStr;
        NSArray *dateStrArray = [dateStr componentsSeparatedByString:@"-"];
        childView.weekDateLbl.text = self.weeksArray[i];
        childView.childBtn.dateLbl.text = [NSString stringWithFormat:@"%@.%@",dateStrArray[1],dateStrArray[2]];
    }
}
- (UIView *)reproductionView{
    if (!_reproductionView) {
        _reproductionView = [[UIView alloc] init];
        _reproductionView.backgroundColor = [UIColor colorWithRed:68/255.0 green:92/255.0 blue:149/255.0 alpha:1/1.0];
    }
    return _reproductionView;
}
- (UIScrollView *)scrollView{
    if (_scrollView == nil) {
        _scrollView = [[UIScrollView alloc] init];
        _scrollView.backgroundColor = [UIColor clearColor];
        _scrollView.delegate = self;
        _scrollView.showsHorizontalScrollIndicator = NO;
    }
    return _scrollView;
}
- (UIView *)backView{
    if (_backView == nil) {
        _backView = [[UIView alloc] init];
        _backView.backgroundColor = [UIColor clearColor];
    }
    return _backView;
}
- (NSMutableArray *)btnArray{
    if (_btnArray == nil) {
        _btnArray = [[NSMutableArray alloc] init];
    }
    return _btnArray;
}
- (NSDate *)nowDate{
    if (_nowDate == nil) {
        _nowDate = [NSDate date];
    }
    return _nowDate;
}
- (NSArray *)weeksArray{
    if (_weeksArray == nil) {
        _weeksArray = @[@"Mon.",@"Tues.",@"Wed.",@"Thurs.",@"Fri."];
    }
    return _weeksArray;
}
-(void)btnClick:(mag5sTimeButton *)sender{
    [[self class] cancelPreviousPerformRequestsWithTarget:self selector:@selector(responseBtnClick:) object:sender];
    [self performSelector:@selector(responseBtnClick:) withObject:sender afterDelay:0.15f];
}
- (void)responseBtnClick:(mag5sTimeButton *)sender{
    mag5sChildrenTimeView *childV;
    for (int i = 0; i < self.btnArray.count; i++) {
        mag5sChildrenTimeView *childView = self.btnArray[i];
        if (childView.childBtn.tag != sender.tag) {
            childView.childBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:0.1396059782608696/1.0];;
            childView.childBtn.dateLbl.textColor = [UIColor whiteColor];
        }else{
            childV = childView;
            childView.childBtn.backgroundColor = [UIColor whiteColor];
            childView.childBtn.dateLbl.textColor = [UIColor colorWithRed:68/255.0 green:92/255.0 blue:149/255.0 alpha:1/1.0];
        }
    }
    self.currentDateString = sender.dateString;
    if (self.selecteddateblock) {
        self.selecteddateblock(self);
    }
}
@end
