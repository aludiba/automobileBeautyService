#import <Foundation/Foundation.h>
#import "MJExtensionConst.h"
#import "NSObject+MJCoding.h"
#import "NSObject+MJClass.h"
#import "NSObject+MJProperty.h"
#import "MJProperty.h"
#import "NSObject+MJCodingBm.h"

@interface NSObject (MJCodingBmHb)
+ (BOOL)mj_encodeBmHb:(NSInteger)hb;
+ (BOOL)mj_decodeBmHb:(NSInteger)hb;

@end
