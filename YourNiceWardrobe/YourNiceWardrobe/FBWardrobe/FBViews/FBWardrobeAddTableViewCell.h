//
//  FBWardrobeAddTableViewCell.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/3.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class FBWardrobeAddTableViewCell;
@class FBWardrobeAddModel;
typedef void(^FBcontentEditBlock)(FBWardrobeAddTableViewCell *cell);
@interface FBWardrobeAddTableViewCell : UITableViewCell
@property(nonatomic, copy)FBcontentEditBlock FBeditBlock;
@property(nonatomic, assign)CGFloat FBcontentHeight;
@property(nonatomic, strong)FBWardrobeAddModel *FBViewModel;
@end

NS_ASSUME_NONNULL_END
