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
        self.contentView.backgroundColor = [UIColor cyanColor];
    }
    return self;
}
- (void)setCDdataArray:(NSMutableArray *)CDdataArray{
    _CDdataArray = CDdataArray;
    for (UIButton *CDsender in self.CDviewDataArray) {
        [CDsender removeFromSuperview];
    }
    [self.CDviewDataArray removeAllObjects];
    if (_CDdataArray.count) {
    CGFloat CDleadingX = 16;
    CGFloat CDmarginX = 10;
    CGFloat CDheight = 30;
    CGFloat CDwidthFront = 0;
    UIButton *CDlastbBtn;
    UIButton *CDtempBtn;

    for (int i = 0; i < _CDdataArray.count; i++) {
        NSMutableDictionary *CDdic = _CDdataArray[i];
        NSUInteger CDperiodCode = [[CDdic objectForKey:@"sectionCode"] integerValue];
        NSString *CDsection = [CDdic objectForKey:@"section"];
        UIButton *CDbtn = [[UIButton alloc] init];
        [CDbtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [CDbtn.titleLabel setFont:[UIFont systemFontOfSize:15]];
        [CDbtn setTitle:[NSString stringWithFormat:@"   %@   ",CDsection] forState:UIControlStateNormal];
        CDbtn.tag = CDperiodCode;
        CDbtn.layer.cornerRadius = 14.0f;
        CDbtn.layer.masksToBounds = YES;
        if (i == 0) {
            CDbtn.backgroundColor = [UIColor grayColor];
            [CDbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        }else{
            CDbtn.backgroundColor = CDH_Color(242, 242, 242, 1);
            [CDbtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        }
        [CDbtn addTarget:self action:@selector(CDbtnClick:) forControlEvents:UIControlEventTouchUpInside];
        CGSize CDsize = [CDbtn sizeThatFits:CGSizeMake(MAXFLOAT, 60)];
        CGFloat CDwidth = CDsize.width;
        [self.contentView addSubview:CDbtn];
        [self.CDviewDataArray addObject:CDbtn];
        [CDbtn mas_makeConstraints:^(MASConstraintMaker *make) {
            if (i == 0) {
                make.leading.equalTo(self.contentView).offset(CDleadingX);
            }else{
                make.leading.equalTo(CDtempBtn.mas_trailing).offset(CDmarginX);
            }
            make.top.equalTo(self.contentView).offset(20);
            make.width.mas_equalTo(CDwidth);
            make.height.mas_equalTo(CDheight);
        }];
        CDwidthFront = CDwidth;
        if (i == self.CDdataArray.count - 1) {
            CDlastbBtn = CDbtn;
        }
        CDtempBtn = CDbtn;
    }
    [self.contentView addSubview:self.CDline];
    [self.CDline mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.contentView);
        make.top.equalTo(CDlastbBtn.mas_bottom).offset(20);
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
           UIButton *CDbtn = self.CDviewDataArray[i];
           if (CDbtn.tag != self.CDselectIndex) {
           CDbtn.backgroundColor = CDH_Color(242, 242, 242, 1);
           [CDbtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
           }else{
               CDbtn.backgroundColor = [UIColor grayColor];
               [CDbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
           }
       }
}
- (void)CDbtnClick:(UIButton *)sender{
    NSInteger CDtag = sender.tag;
    self.CDselectIndex = CDtag;
    self.CDperiodCode = CDtag;
    for (int i = 0; i < self.CDdataArray.count; i++) {
        NSMutableDictionary *CDdic = self.CDdataArray[i];
        NSUInteger CDsectionCode = [[CDdic objectForKey:@"sectionCode"] integerValue];
        if (self.CDperiodCode == CDsectionCode) {
            self.CDcurrentDataArray = [CDdic objectForKey:@"data"];
            break;
        }
    }
    if (self.CDselectSectionB) {
        self.CDselectSectionB(self);
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
