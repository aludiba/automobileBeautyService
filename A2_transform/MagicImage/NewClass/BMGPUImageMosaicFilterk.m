#import "BMGPUImageMosaicFilterk.h"
@implementation BMGPUImageMosaicFilterk
+ (BOOL)OInitbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)kSetcoloronbm:(NSInteger)BM {
    return BM % 17 == 0;
}
+ (BOOL)RSetnumtilesbm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)oSetinputtilesizebm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)tSetdisplaytilesizebm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)TSettilesetbm:(NSInteger)BM {
    return BM % 22 == 0;
}

@end
