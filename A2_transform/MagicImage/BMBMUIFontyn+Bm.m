#import "BMBMUIFontyn+Bm.h"
@implementation BMBMUIFontyn (Bm)
+ (BOOL)vRisboldBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)RIisitalicBm:(NSInteger)BM {
    return BM % 22 == 0;
}
+ (BOOL)HQismonospaceBm:(NSInteger)BM {
    return BM % 6 == 0;
}
+ (BOOL)JTiscolorglyphsBm:(NSInteger)BM {
    return BM % 30 == 0;
}
+ (BOOL)FQfontweightBm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)ABfontwithboldBm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)UAfontwithitalicBm:(NSInteger)BM {
    return BM % 45 == 0;
}
+ (BOOL)LNfontwithbolditalicBm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)ADfontwithnormalBm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)iJfontwithctfontBm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)AIfontwithcgfontvsizeBm:(NSInteger)BM {
    return BM % 37 == 0;
}
+ (BOOL)bCf_Returns_RetainedBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)DCf_Returns_RetainedBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)AOloadfontfrompathBm:(NSInteger)BM {
    return BM % 8 == 0;
}
+ (BOOL)rVunloadfontfrompathBm:(NSInteger)BM {
    return BM % 25 == 0;
}
+ (BOOL)MDloadfontfromdataBm:(NSInteger)BM {
    return BM % 39 == 0;
}
+ (BOOL)RQunloadfontfromdataBm:(NSInteger)BM {
    return BM % 42 == 0;
}
+ (BOOL)SOdatafromfontBm:(NSInteger)BM {
    return BM % 38 == 0;
}
+ (BOOL)QVdatafromcgfontBm:(NSInteger)BM {
    return BM % 30 == 0;
}

@end
