//
//  stbaAddressBookModel.h
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface stbaAddressBookModel : NSObject
@property(nonatomic, copy)NSString *name;
@property(nonatomic, copy)NSString *gender;
@property(nonatomic, copy)NSString *phoneNumber;
@property(nonatomic, copy)NSString *email;
@end

NS_ASSUME_NONNULL_END
