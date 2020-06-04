//
//  FBDressUpAddModel.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBDressUpAddModel : NSObject
@property(nonatomic, copy)NSString *FBTitle;
@property(nonatomic, copy)NSString *FBContent;
@property(nonatomic, copy)NSString *FBDefault;
@property(nonatomic, assign)CGFloat FBEditHeight;
@end

NS_ASSUME_NONNULL_END
