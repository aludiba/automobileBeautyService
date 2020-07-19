#import "BMUIImaged.h"
@implementation BMUIImaged
+ (BOOL)VImagewithimagewithcolormatrixbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)wImagechangeblacktotransparentbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)VImagewithmaskimagebm:(NSInteger)BM {
    return BM % 28 == 0;
}
+ (BOOL)qImagewithmaskimagemaskcolorbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)jImagewithlayermaskimagemaskcolorbm:(NSInteger)BM {
    return BM % 43 == 0;
}
+ (BOOL)SImagewithcolorbm:(NSInteger)BM {
    return BM % 21 == 0;
}

@end
