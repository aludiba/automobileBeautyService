//
//  mag5sTimeView.h
//  workshopManagement5s
//
//  Created by 褚红彪 on 2019/6/30.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class mag5sTimeButton;
@class mag5sChildrenTimeView;
@class mag5sTimeView;
typedef void(^selectedDateB)(mag5sTimeView *mag5stimeview);
@interface mag5sTimeView : UIView
@property(nonatomic, copy)selectedDateB selecteddateblock;
@property(nonatomic, strong)NSString *currentDateString;
@property(nonatomic, assign)NSInteger currentIndex;
@property(nonatomic, strong)NSMutableArray *btnArray;
@property(nonatomic, strong)NSArray *dataArray;
- (instancetype)initCurrentDate:(nullable NSString *)datestring;
-(void)btnClick:(mag5sTimeButton *)sender;
@end

NS_ASSUME_NONNULL_END
