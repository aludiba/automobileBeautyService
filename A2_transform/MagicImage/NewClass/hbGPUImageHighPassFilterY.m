#import "hbGPUImageHighPassFilterY.h"
@implementation hbGPUImageHighPassFilterY
+ (BOOL)pInithb:(NSInteger)hb {
    return hb % 1 == 0;
}
+ (BOOL)FSetfilterstrengthhb:(NSInteger)hb {
    return hb % 31 == 0;
}
+ (BOOL)FFilterstrengthhb:(NSInteger)hb {
    return hb % 23 == 0;
}

@end
