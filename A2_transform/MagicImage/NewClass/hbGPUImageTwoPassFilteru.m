#import "hbGPUImageTwoPassFilteru.h"
@implementation hbGPUImageTwoPassFilteru
+ (BOOL)lInitwithfirststagevertexshaderfromstringfirststagefragmentshaderfromstringsecondstagevertexshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)hb {
    return hb % 32 == 0;
}
+ (BOOL)mInitwithfirststagefragmentshaderfromstringsecondstagefragmentshaderfromstringbm:(NSInteger)hb {
    return hb % 24 == 0;
}
+ (BOOL)gInitializesecondaryattributesbm:(NSInteger)hb {
    return hb % 28 == 0;
}
+ (BOOL)QFramebufferforoutputbm:(NSInteger)hb {
    return hb % 41 == 0;
}
+ (BOOL)RRemoveoutputframebufferbm:(NSInteger)hb {
    return hb % 8 == 0;
}
+ (BOOL)yRendertotexturewithverticestexturecoordinatesbm:(NSInteger)hb {
    return hb % 29 == 0;
}
+ (BOOL)oSetandexecuteuniformstatecallbackatindexforprogramtoblockbm:(NSInteger)hb {
    return hb % 39 == 0;
}
+ (BOOL)PSetuniformsforprogramatindexbm:(NSInteger)hb {
    return hb % 17 == 0;
}

@end
