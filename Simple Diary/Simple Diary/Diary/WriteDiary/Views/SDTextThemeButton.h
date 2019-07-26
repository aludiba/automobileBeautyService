//
//  SDTextThemeButton.h
//  Simple Diary
//
//  Created by bykj on 2019/7/26.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDButton.h"

NS_ASSUME_NONNULL_BEGIN

@interface SDTextThemeButton : SDButton
@property(nonatomic, strong)UIColor *currentColor;
@property(nonatomic, assign)Boolean isSelect;

@end

NS_ASSUME_NONNULL_END
