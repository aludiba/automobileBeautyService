#import "BMBMGPUImageTwoPassFilterIk.h"
@implementation BMBMGPUImageTwoPassFilterIk
+ (BOOL)rCinitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)ACinitwithfirststagefragmentshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 27 == 0;
}
+ (BOOL)ANinitializesecondaryattributesbm:(NSInteger)BM {
    return BM % 44 == 0;
}
+ (BOOL)NFframebufferforoutputbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)GRremoveoutputframebufferbm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)ROrendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 26 == 0;
}
+ (BOOL)IRsetandexecuteuniformstatecallbackatindexforprogramtoblockbm:(NSInteger)BM {
    return BM % 16 == 0;
}
+ (BOOL)tPsetuniformsforprogramatindexbm:(NSInteger)BM {
    return BM % 42 == 0;
}

@end
