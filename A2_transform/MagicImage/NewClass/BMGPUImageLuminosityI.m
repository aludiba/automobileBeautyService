#import "BMGPUImageLuminosityI.h"
@implementation BMGPUImageLuminosityI
+ (BOOL)rInitbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)WInitializesecondaryattributesbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)sExtractluminosityatframetimebm:(NSInteger)BM {
    return BM % 35 == 0;
}

@end
