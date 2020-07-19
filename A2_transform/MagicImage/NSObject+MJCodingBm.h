#import <Foundation/Foundation.h>
#import "MJExtensionConst.h"
#import "NSObject+MJCoding.h"
#import "NSObject+MJClass.h"
#import "NSObject+MJProperty.h"
#import "MJProperty.h"

@interface NSObject (MJCodingBm)
+ (BOOL)mj_encodeBm:(NSInteger)BM;
+ (BOOL)mj_decodeBm:(NSInteger)BM;

@end
