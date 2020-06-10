//
//  JBCargoAddViewModel.h
//  TransportationManagement
//
//  Created by 褚红彪 on 2020/4/2.
//  Copyright © 2020 hb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JBCargoAddViewModel : NSObject
@property(nonatomic, copy)NSString *JBTitle;
@property(nonatomic, copy)NSString *JBContent;
@property(nonatomic, copy)NSString *JBDefault;
@property(nonatomic, assign)CGFloat JBEditHeight;
@property(nonatomic, assign)Boolean isLine;
@end

NS_ASSUME_NONNULL_END
