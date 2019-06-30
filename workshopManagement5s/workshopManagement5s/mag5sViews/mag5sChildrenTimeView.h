//
//  mag5sChildrenTimeView.h
//  workshopManagement5s
//
//  Created by 褚红彪 on 2019/6/30.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class mag5sTimeButton;
@interface mag5sChildrenTimeView : UIView
@property(nonatomic, strong)UILabel *weekDateLbl;
@property(nonatomic, strong)UIImageView *availableDateImgView;
@property(nonatomic, strong)UIView *backView;
@property(nonatomic, strong)NSString *dateString;
@property(nonatomic, strong)mag5sTimeButton *childBtn;
@end

NS_ASSUME_NONNULL_END
