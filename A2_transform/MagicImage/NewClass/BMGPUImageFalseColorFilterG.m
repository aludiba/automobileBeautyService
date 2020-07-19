#import "BMGPUImageFalseColorFilterG.h"
@implementation BMGPUImageFalseColorFilterG
+ (BOOL)Sinit:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)CSetfirstcolor:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)TSetsecondcolor:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)OSetfirstcolorredZGreenfBlue:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)PSetsecondcolorredeGreenRBlue:(NSInteger)BM {
    return BM % 43 == 0;
}

@end
