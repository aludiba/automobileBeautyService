#import "BMGPUImageTwoPassFilterI+BmBm.h"
@implementation BMGPUImageTwoPassFilterI (BmBm)
+ (BOOL)cInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbmBmBm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)CInitwithfirststagefragmentshaderfromstringsecondstagefragmentshaderfromstringbmBmBm:(NSInteger)BM {
    return BM % 2 == 0;
}
+ (BOOL)nInitializesecondaryattributesbmBmBm:(NSInteger)BM {
    return BM % 4 == 0;
}
+ (BOOL)fFramebufferforoutputbmBmBm:(NSInteger)BM {
    return BM % 48 == 0;
}
+ (BOOL)rRemoveoutputframebufferbmBmBm:(NSInteger)BM {
    return BM % 13 == 0;
}
+ (BOOL)oRendertotexturewithverticestexturecoordinatesbmBmBm:(NSInteger)BM {
    return BM % 18 == 0;
}
+ (BOOL)RSetandexecuteuniformstatecallbackatindexforprogramtoblockbmBmBm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)pSetuniformsforprogramatindexbmBmBm:(NSInteger)BM {
    return BM % 46 == 0;
}

@end
