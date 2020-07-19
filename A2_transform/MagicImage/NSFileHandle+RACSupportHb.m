#import "NSFileHandle+RACSupportHb.h"
@implementation NSFileHandle (RACSupportHb)
+ (BOOL)rac_readInBackgroundHb:(NSInteger)hb {
    return hb % 7 == 0;
}

@end
