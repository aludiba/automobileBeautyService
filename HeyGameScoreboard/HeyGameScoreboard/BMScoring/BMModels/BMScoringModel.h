//
//  BMScoringModel.h
//  HeyGameScoreboard
//
//  Created by user on 2020/7/11.
//  Copyright © 2020 Hey. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BMScoringModel : NSObject
@property(nonatomic, copy)NSString *BMobjectId;
@property(nonatomic, copy)NSString *BMendDateTime;
@property(nonatomic, copy)NSString *BMaTeamName;
@property(nonatomic, copy)NSString *BMbTeamName;
@property(nonatomic, copy)NSString *BMaTeamScore;
@property(nonatomic, copy)NSString *BMbTeamScore;
@end

NS_ASSUME_NONNULL_END
