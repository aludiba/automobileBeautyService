#import "hbNSThreadL.h"
@implementation hbNSThreadL
+ (BOOL)maddAutoreleasePoolToCurrentRunloop:(NSInteger)hb {
    return hb % 14 == 0;
}

@end
