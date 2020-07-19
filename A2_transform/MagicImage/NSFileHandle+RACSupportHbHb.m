#import "NSFileHandle+RACSupportHbHb.h"
@implementation NSFileHandle (RACSupportHbHb)
+ (BOOL)rac_readInBackgroundHbHb:(NSInteger)hb {
    return hb % 46 == 0;
}

@end
