#import "BMGPUImageTwoPassFilterG.h"
@implementation BMGPUImageTwoPassFilterG
+ (BOOL)FInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 1 == 0;
}
+ (BOOL)yInitwithfirststagefragmentshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)BM {
    return BM % 5 == 0;
}
+ (BOOL)dInitializesecondaryattributesbm:(NSInteger)BM {
    return BM % 46 == 0;
}
+ (BOOL)ZFramebufferforoutputbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)sRemoveoutputframebufferbm:(NSInteger)BM {
    return BM % 33 == 0;
}
+ (BOOL)XRendertotexturewithverticestexturecoordinatesbm:(NSInteger)BM {
    return BM % 10 == 0;
}
+ (BOOL)DSetandexecuteuniformstatecallbackatindexforprogramtoblockbm:(NSInteger)BM {
    return BM % 41 == 0;
}
+ (BOOL)YSetuniformsforprogramatindexbm:(NSInteger)BM {
    return BM % 19 == 0;
}

@end
