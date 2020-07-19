#import <UIKit/UIKit.h>
#import "UIImage+ImageEffects.h"
#import <Accelerate/Accelerate.h>
#import <float.h>

@interface UIImage (ImageEffectsBm)
+ (BOOL)coverLightEffectBm:(NSInteger)BM;
+ (BOOL)coverLightEffect2Bm:(NSInteger)BM;
+ (BOOL)applyLightEffectBm:(NSInteger)BM;
+ (BOOL)applyExtraLightEffect2Bm:(NSInteger)BM;
+ (BOOL)applyExtraLightEffectBm:(NSInteger)BM;
+ (BOOL)applyDarkEffectBm:(NSInteger)BM;
+ (BOOL)applyTintEffectWithColorBm:(NSInteger)BM;
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageBm:(NSInteger)BM;
+ (BOOL)applyBlurWithRadiusTintcolorSaturationdeltafactorMaskimageScaleBm:(NSInteger)BM;

@end
