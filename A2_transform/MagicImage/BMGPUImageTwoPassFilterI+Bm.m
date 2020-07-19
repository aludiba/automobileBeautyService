#import "BMGPUImageTwoPassFilterI+Bm.h"
@implementation BMGPUImageTwoPassFilterI (Bm)
+ (BOOL)cInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmBm:(NSInteger)BM {
    return BM % 9 == 0;
}
+ (BOOL)CInitwithfirststagefragmentshaderfromstringsecondstagefragmentshaderfromstringbmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)nInitializesecondaryattributesbmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)fFramebufferforoutputbmBm:(NSInteger)BM {
    return BM % 15 == 0;
}
+ (BOOL)rRemoveoutputframebufferbmBm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)oRendertotexturewithverticestexturecoordinatesbmBm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)RSetandexecuteuniformstatecallbackatindexforprogramtoblockbmBm:(NSInteger)BM {
    return BM % 49 == 0;
}
+ (BOOL)pSetuniformsforprogramatindexbmBm:(NSInteger)BM {
    return BM % 45 == 0;
}

@end
