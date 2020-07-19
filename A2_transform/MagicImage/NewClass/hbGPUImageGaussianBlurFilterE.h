#import <Foundation/Foundation.h>
@interface hbGPUImageGaussianBlurFilterE: NSObject
+ (BOOL)VInitwithfirststagevertexshaderfromstringOFirststagefragmentshaderfromstringfSecondstagevertexshaderfromstringZSecondstagefragmentshaderfromstring:(NSInteger)hb;
+ (BOOL)Winit:(NSInteger)hb;
+ (BOOL)sVertexshaderforstandardblurofradiusMSigma:(NSInteger)hb;
+ (BOOL)DFragmentshaderforstandardblurofradiusiSigma:(NSInteger)hb;
+ (BOOL)oVertexshaderforoptimizedblurofradiuswSigma:(NSInteger)hb;
+ (BOOL)bFragmentshaderforoptimizedblurofradiuswSigma:(NSInteger)hb;
+ (BOOL)vSetupfilterforsize:(NSInteger)hb;
+ (BOOL)yRendertotexturewithverticesuTexturecoordinates:(NSInteger)hb;
+ (BOOL)pSwitchtovertexshaderBFragmentshader:(NSInteger)hb;
+ (BOOL)eSettexelspacingmultiplier:(NSInteger)hb;
+ (BOOL)USetblurradiusinpixels:(NSInteger)hb;
+ (BOOL)FSetblurradiusasfractionofimagewidth:(NSInteger)hb;
+ (BOOL)eSetblurradiusasfractionofimageheight:(NSInteger)hb;

@end
