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
//昵称的pinyin 获取的时候就应该转为拼音了
@property (nonatomic, copy) NSString *namePinYin;
//昵称的拼音转小写
@property (nonatomic, copy) NSString *nameLowerCase;
@property (nonatomic, assign) BOOL isSlect;//是否被选中
@end

NS_ASSUME_NONNULL_END
