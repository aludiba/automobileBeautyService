#import "BMGPUImagePolkaDotFiltera.h"
@implementation BMGPUImagePolkaDotFiltera
+ (BOOL)xinit:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)ISetdotscaling:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
