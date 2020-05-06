//
//  BCDressUpAddModel.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BCDressUpAddModel : NSObject
@property(nonatomic, copy)NSString *BCTitle;
@property(nonatomic, copy)NSString *BCContent;
@property(nonatomic, copy)NSString *BCDefault;
@property(nonatomic, assign)CGFloat BCEditHeight;
@end

NS_ASSUME_NONNULL_END
