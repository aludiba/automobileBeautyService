#import "BMGPUImagePolkaDotFilterH.h"
@implementation BMGPUImagePolkaDotFilterH
+ (BOOL)pinit:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)SSetdotscaling:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
