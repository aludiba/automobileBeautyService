//
//  SDJournalEditingToolbar.h
//  Simple Diary
//
//  Created by bykj on 2019/7/21.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, editingToolbarCompleteType) {
    editingToolbarCompleteTypeText = 0,
    editingToolbarCompleteTypeStyle = 1,
    editingToolbarCompleteTypePicture = 2,
    editingToolbarCompleteTypeWeather = 3,
    editingToolbarCompleteTypeLift = 4,
};
@class SDWriteDiaryViewController;
@class SDJournalEditingToolbar;
@class SDTextSetView;
@class SDTextThemeView;
@class SDTextPictureView;

typedef void(^complete)(SDJournalEditingToolbar *editingToolbar);
@interface SDJournalEditingToolbar : UIView
@property(nonatomic, strong)SDWriteDiaryViewController *superVC;
@property(nonatomic, assign)editingToolbarCompleteType completetype;
@property(nonatomic, copy)complete editingToolbarBlock;
@property(nonatomic, assign)Boolean isExpand;
@property(nonatomic, strong)UIView *contentView;
@property(nonatomic, strong)SDTextSetView *textSetView;
@property(nonatomic, strong)SDTextThemeView *textThemeView;
@property(nonatomic, strong)SDTextPictureView *textPictureView;
@end

NS_ASSUME_NONNULL_END
