#import <Foundation/Foundation.h>
@interface hbGPUImageTwoPassFilterf: NSObject
+ (BOOL)OInitwithfirststagevertexshaderfromstringPFirststagefragmentshaderfromstringTSecondstagevertexshaderfromstringLSecondstagefragmentshaderfromstring:(NSInteger)hb;
+ (BOOL)UInitwithfirststagefragmentshaderfromstringkSecondstagefragmentshaderfromstring:(NSInteger)hb;
+ (BOOL)RinitializeSecondaryAttributes:(NSInteger)hb;
+ (BOOL)SframebufferForOutput:(NSInteger)hb;
+ (BOOL)BremoveOutputFramebuffer:(NSInteger)hb;
+ (BOOL)uRendertotexturewithverticesdTexturecoordinates:(NSInteger)hb;
+ (BOOL)mSetandexecuteuniformstatecallbackatindexsForprogramzToblock:(NSInteger)hb;
+ (BOOL)ySetuniformsforprogramatindex:(NSInteger)hb;

@end
