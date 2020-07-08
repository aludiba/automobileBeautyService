//
//  LBFeedbackModel.h
//  MacroSports
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 macro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBFeedbackModel : NSObject
@property(nonatomic, copy)NSString *LBTitle;
@property(nonatomic, copy)NSString *LBTitleDefault;
@property(nonatomic, copy)NSString *LBTitleContent;
@property(nonatomic, copy)NSString *LBFeedback;
@property(nonatomic, copy)NSString *LBFeedbackDefault;
@property(nonatomic, copy)NSString *LBFeedbackContent;
@end

NS_ASSUME_NONNULL_END
