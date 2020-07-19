#import "BMGPUImageTwoPassFilterI.h"
@implementation BMGPUImageTwoPassFilterI
+ (BOOL)cInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 32 == 0;
}
+ (BOOL)CInitwithfirststagefragmentshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 11 == 0;
}
+ (BOOL)nInitializesecondaryattributesbm:(NSInteger)BM {
    return BM % 29 == 0;
}
+ (BOOL)fFramebufferforoutputbm:(NSInteger)BM {
    return BM % 12 == 0;
}
+ (BOOL)rRemoveoutputframebufferbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)oRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 14 == 0;
}
+ (BOOL)RSetandexecuteuniformstatecallbackatindexforprogramtoblockbm:(NSInteger)BM {
    return BM % 50 == 0;
}
+ (BOOL)pSetuniformsforprogramatindexbm:(NSInteger)BM {
    return BM % 14 == 0;
}

@end
