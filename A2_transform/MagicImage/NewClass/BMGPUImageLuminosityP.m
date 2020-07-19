#import "BMGPUImageLuminosityP.h"
@implementation BMGPUImageLuminosityP
+ (BOOL)Rinit:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)WinitializeSecondaryAttributes:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)bExtractluminosityatframetime:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
