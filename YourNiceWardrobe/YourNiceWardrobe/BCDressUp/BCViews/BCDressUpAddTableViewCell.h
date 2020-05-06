//
//  BCDressUpAddTableViewCell.h
//  YourNiceWardrobe
//
//  Created by 褚红彪 on 2020/5/6.
//  Copyright © 2020 hb. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class BCDressUpAddModel;
@class BCDressUpAddTableViewCell;
typedef void(^BCcontentEditBlock)(BCDressUpAddTableViewCell *cell);
@interface BCDressUpAddTableViewCell : UITableViewCell
@property(nonatomic, copy)BCcontentEditBlock BCeditBlock;
@property(nonatomic, assign)CGFloat BCcontentHeight;
@property(nonatomic, strong)BCDressUpAddModel *BCViewModel;
@end

NS_ASSUME_NONNULL_END
