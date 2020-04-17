//
//  ALCargoAddViewModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ALCargoAddViewModel : NSObject
@property(nonatomic, copy)NSString *ALTitle;
@property(nonatomic, copy)NSString *ALContent;
@property(nonatomic, copy)NSString *ALDefault;
@property(nonatomic, assign)CGFloat ALEditHeight;
@property(nonatomic, assign)Boolean isLine;
@end

NS_ASSUME_NONNULL_END
