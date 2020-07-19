#import <Foundation/Foundation.h>
#import "MJExtensionConst.h"
#import "NSString+MJExtension.h"

@interface NSString (MJExtensionBm)
+ (BOOL)mj_underlineFromCamelBm:(NSInteger)BM;
+ (BOOL)mj_camelFromUnderlineBm:(NSInteger)BM;
+ (BOOL)mj_firstCharLowerBm:(NSInteger)BM;
+ (BOOL)mj_firstCharUpperBm:(NSInteger)BM;
+ (BOOL)mj_isPureIntBm:(NSInteger)BM;
+ (BOOL)mj_urlBm:(NSInteger)BM;

@end
