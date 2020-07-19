#import "BMGPUImageChromaKeyFilteru+Bm.h"
@implementation BMGPUImageChromaKeyFilteru (Bm)
+ (BOOL)winitBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)gSetcolortoreplaceredwGreenrBlueBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)ASetthresholdsensitivityBm:(NSInteger)BM {
    return BM % 3 == 0;
}
+ (BOOL)TSetsmoothingBm:(NSInteger)BM {
    return BM % 25 == 0;
}

@end
