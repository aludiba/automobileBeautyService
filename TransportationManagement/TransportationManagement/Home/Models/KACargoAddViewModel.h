//
//  KACargoAddViewModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KACargoAddViewModel : NSObject
@property(nonatomic, copy)NSString *KATitle;
@property(nonatomic, copy)NSString *KAContent;
@property(nonatomic, copy)NSString *KADefault;
@property(nonatomic, assign)CGFloat KAEditHeight;
@property(nonatomic, assign)Boolean isLine;
@end

NS_ASSUME_NONNULL_END
