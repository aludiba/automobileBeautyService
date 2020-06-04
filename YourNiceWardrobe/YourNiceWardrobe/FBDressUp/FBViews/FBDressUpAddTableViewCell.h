//
//  FBDressUpAddTableViewCell.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class FBDressUpAddModel;
@class FBDressUpAddTableViewCell;
typedef void(^FBcontentEditBlock)(FBDressUpAddTableViewCell *cell);
@interface FBDressUpAddTableViewCell : UITableViewCell
@property(nonatomic, copy)FBcontentEditBlock FBeditBlock;
@property(nonatomic, assign)CGFloat FBcontentHeight;
@property(nonatomic, strong)FBDressUpAddModel *FBViewModel;
@end

NS_ASSUME_NONNULL_END
