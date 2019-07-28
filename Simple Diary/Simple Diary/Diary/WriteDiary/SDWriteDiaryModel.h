//
//  SDWriteDiaryModel.h
//  Simple Diary
//
//  Created by 褚红彪 on 2019/7/27.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SDWriteDiaryModel : NSObject
@property(nonatomic, strong)NSString *fontSizeString;
@property(nonatomic, strong)NSDictionary *fontRGBDictionary;
@property(nonatomic, strong)NSDictionary *themeRGBDictionary;
@property(nonatomic, strong)NSString *locationInformationString;
@property(nonatomic, strong)NSString *weatherInformationString;
@property(nonatomic, strong)NSString *content;
@property(nonatomic, strong)NSString *dateString;
@property(nonatomic, strong)NSString *weekDayString;
@end

NS_ASSUME_NONNULL_END
