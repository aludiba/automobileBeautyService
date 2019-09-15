//
//  GHGuideModel.h
//  GoodHabit
//
//  Created by 褚红彪 on 2019/9/15.
//  Copyright © 2019 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GHGuideModel : NSObject
@property(nonatomic, assign)NSUInteger periodCode;
@property(nonatomic, copy)NSString *periodTimeString;
@property(nonatomic, copy)NSString *imageContent;
@property(nonatomic, assign)NSUInteger contentCode;
@property(nonatomic, copy)NSString *content;
@end

NS_ASSUME_NONNULL_END
