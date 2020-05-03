//
//  BCWardrobeAddModel.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/3.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BCWardrobeAddModel : NSObject
@property(nonatomic, copy)NSString *BCTitle;
@property(nonatomic, copy)NSString *BCContent;
@property(nonatomic, copy)NSString *BCDefault;
@property(nonatomic, assign)CGFloat BCEditHeight;
@property(nonatomic, assign)Boolean BCisLine;
@end

NS_ASSUME_NONNULL_END
