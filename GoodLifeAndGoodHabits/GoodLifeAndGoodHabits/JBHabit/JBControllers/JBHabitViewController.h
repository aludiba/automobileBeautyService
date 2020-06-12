//
//  JBHabitViewController.h
//  GoodLifeAndGoodHabits
//
//  Created by user on 2020/6/9.
//  Copyright © 2020 user. All rights reserved.
//

#import "JBBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN
@class JBHabitChildViewController;
@interface JBHabitViewController : JBBaseViewController
@property (nonatomic, strong) JBHabitChildViewController *JBChildAllVC;
@property (nonatomic, strong) JBHabitChildViewController *JBChildMotionVC;
@property (nonatomic, strong) JBHabitChildViewController *JBChildReadBookVC;
@property (nonatomic, strong) JBHabitChildViewController *JBChildMusicalInstrumentsVC;
@property (nonatomic, strong) JBHabitChildViewController *JBChildOthersVC;
@end

NS_ASSUME_NONNULL_END
