//
//  FBWardrobeAddModel.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/3.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBWardrobeAddModel : NSObject
@property(nonatomic, copy)NSString *FBTitle;
@property(nonatomic, copy)NSString *FBContent;
@property(nonatomic, copy)NSString *FBDefault;
@property(nonatomic, assign)CGFloat FBEditHeight;
@property(nonatomic, assign)Boolean FBisLine;
@end

NS_ASSUME_NONNULL_END
