#import "BMMIHttpEnclosureToolW.h"
@implementation BMMIHttpEnclosureToolW
+ (BOOL)OGetparametersresblockbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)yPostparametersresblockbm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)rUploadparametersuploadparamarrayresblockbm:(NSInteger)BM {
    return BM % 8 == 0;
}

@end
