#import "BMGPUImageLuminosityO.h"
@implementation BMGPUImageLuminosityO
+ (BOOL)zInitbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)UInitializesecondaryattributesbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)lExtractluminosityatframetimebm:(NSInteger)BM {
    return BM % 27 == 0;
}

@end
