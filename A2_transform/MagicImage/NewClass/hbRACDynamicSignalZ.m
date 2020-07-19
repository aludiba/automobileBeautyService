#import "hbRACDynamicSignalZ.h"
@implementation hbRACDynamicSignalZ
+ (BOOL)pCreatesignalhb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)TSubscribehb:(NSInteger)hb {
    return hb % 32 == 0;
}

@end
