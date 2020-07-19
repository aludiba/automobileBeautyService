#import <Foundation/Foundation.h>
@interface BMGPUImageTwoPassFilterH: NSObject
+ (BOOL)KInitwithfirststagevertexshaderfromstringWFirststagefragmentshaderfromstringASecondstagevertexshaderfromstringcSecondstagefragmentshaderfromstring:(NSInteger)BM;
+ (BOOL)FInitwithfirststagefragmentshaderfromstringCSecondstagefragmentshaderfromstring:(NSInteger)BM;
+ (BOOL)RinitializeSecondaryAttributes:(NSInteger)BM;
+ (BOOL)SframebufferForOutput:(NSInteger)BM;
+ (BOOL)GremoveOutputFramebuffer:(NSInteger)BM;
+ (BOOL)pRendertotexturewithverticesXTexturecoordinates:(NSInteger)BM;
+ (BOOL)qSetandexecuteuniformstatecallbackatindexvForprogramKToblock:(NSInteger)BM;
+ (BOOL)gSetuniformsforprogramatindex:(NSInteger)BM;

@end
