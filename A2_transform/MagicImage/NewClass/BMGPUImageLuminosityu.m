#import "BMGPUImageLuminosityu.h"
@implementation BMGPUImageLuminosityu
+ (BOOL)dinit:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)yinitializeSecondaryAttributes:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)pExtractluminosityatframetime:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
