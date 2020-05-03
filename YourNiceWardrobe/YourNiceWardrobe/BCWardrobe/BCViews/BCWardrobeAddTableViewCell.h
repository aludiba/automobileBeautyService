//
//  BCWardrobeAddTableViewCell.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/3.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BCWardrobeAddTableViewCell;
@class BCWardrobeAddModel;
typedef void(^BCcontentEditBlock)(BCWardrobeAddTableViewCell *cell);
@interface BCWardrobeAddTableViewCell : UITableViewCell
@property(nonatomic, copy)BCcontentEditBlock BCeditBlock;
@property(nonatomic, assign)CGFloat BCcontentHeight;
@property(nonatomic, strong)BCWardrobeAddModel *BCViewModel;
@end

NS_ASSUME_NONNULL_END
