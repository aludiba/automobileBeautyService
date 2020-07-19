#import "BMGPUImageMosaicFilterT.h"
@implementation BMGPUImageMosaicFilterT
+ (BOOL)BInitbm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)DSetcoloronbm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)PSetnumtilesbm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)CSetinputtilesizebm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)HSetdisplaytilesizebm:(NSInteger)BM {
    return BM % 19 == 0;
}
+ (BOOL)jSettilesetbm:(NSInteger)BM {
    return BM % 34 == 0;
}

@end
