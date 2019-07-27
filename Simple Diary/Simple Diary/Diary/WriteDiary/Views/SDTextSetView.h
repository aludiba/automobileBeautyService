//
//  SDTextSetView.h
//  Simple Diary
//
//  Created by bykj on 2019/7/21.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SDJournalEditingToolbar;
@interface SDTextSetView : UIView
@property(nonatomic, strong)SDJournalEditingToolbar *superView;
@property(nonatomic, assign)CGFloat fontSize;
@property(nonatomic, strong)UIColor *fontColor;
@property(nonatomic, strong)NSDictionary *fontRGBDictionary;
@end

NS_ASSUME_NONNULL_END
