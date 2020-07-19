#import "BMBMGPUImageFalseColorFilterGC.h"
@implementation BMBMGPUImageFalseColorFilterGC
+ (BOOL)dSinit:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)ICsetfirstcolor:(NSInteger)BM {
    return BM % 31 == 0;
}
+ (BOOL)KTsetsecondcolor:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)oOsetfirstcolorredzgreenfblue:(NSInteger)BM {
    return BM % 21 == 0;
}
+ (BOOL)LPsetsecondcolorredegreenrblue:(NSInteger)BM {
    return BM % 4 == 0;
}

@end
