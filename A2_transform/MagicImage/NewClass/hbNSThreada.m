#import "hbNSThreada.h"
@implementation hbNSThreada
+ (BOOL)SaddAutoreleasePoolToCurrentRunloop:(NSInteger)hb {
    return hb % 16 == 0;
}

@end
