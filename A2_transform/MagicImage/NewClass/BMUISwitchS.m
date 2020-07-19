#import "BMUISwitchS.h"
@implementation BMUISwitchS
+ (BOOL)erac_newOnChannel:(NSInteger)BM {
    return BM % 16 == 0;
}

@end
