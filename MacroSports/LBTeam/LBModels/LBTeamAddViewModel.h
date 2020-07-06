//
//  LBTeamAddViewModel.h
//  MacroSports
//
//  Created by user on 2020/7/4.
//  Copyright © 2020 macro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBTeamAddViewModel : NSObject
@property(nonatomic, copy)NSString *LBTitle;
@property(nonatomic, copy)NSString *LBContent;
@property(nonatomic, copy)NSString *LBDefault;
@property(nonatomic, assign)CGFloat LBEditHeight;
@end

NS_ASSUME_NONNULL_END
