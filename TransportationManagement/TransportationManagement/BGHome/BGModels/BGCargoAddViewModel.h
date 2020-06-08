//
//  BGCargoAddViewModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BGCargoAddViewModel : NSObject
@property(nonatomic, copy)NSString *BGTitle;
@property(nonatomic, copy)NSString *BGContent;
@property(nonatomic, copy)NSString *BGDefault;
@property(nonatomic, assign)CGFloat BGEditHeight;
@property(nonatomic, assign)Boolean isLine;
@end

NS_ASSUME_NONNULL_END
