#import "BMBMGPUImageFalseColorFilterGS.h"
@implementation BMBMGPUImageFalseColorFilterGS
+ (BOOL)mSinit:(NSInteger)BM {
    return BM % 40 == 0;
}
+ (BOOL)MCsetfirstcolor:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)yTsetsecondcolor:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)xOsetfirstcolorredzgreenfblue:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)FPsetsecondcolorredegreenrblue:(NSInteger)BM {
    return BM % 41 == 0;
}

@end
