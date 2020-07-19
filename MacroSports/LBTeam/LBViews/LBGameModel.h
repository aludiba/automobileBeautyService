//
//  LBGameModel.h
//  MacroSports
//
//  Created by user on 2020/7/8.
//  Copyright © 2020 macro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LBGameModel : NSObject
@property(nonatomic, copy)NSString *LBobjectId;
@property(nonatomic, copy)NSString *LBendDateTime;
@property(nonatomic, copy)NSString *LBaTeamName;
@property(nonatomic, copy)NSString *LBbTeamName;
@property(nonatomic, copy)NSString *LBaTeamScore;
@property(nonatomic, copy)NSString *LBbTeamScore;
@end

NS_ASSUME_NONNULL_END
