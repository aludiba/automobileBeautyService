//
//  SDTextWeatherView.h
//  Simple Diary
//
//  Created by 褚红彪 on 2019/7/27.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SDTextWeatherView : UIView
@property(nonatomic, strong)NSString *locationInformationString;
@property(nonatomic,strong)UILabel *locationInformationLabel;
@property(nonatomic, strong)NSString *weatherInformationString;
@end

NS_ASSUME_NONNULL_END
