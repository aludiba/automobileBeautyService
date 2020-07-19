#import <UIKit/UIKit.h>
#import "TOCropViewConstants.h"
#import "TOCropToolbar.h"

@interface TOCropToolbar (Hb)
+ (BOOL)initWithFrameHb:(NSInteger)hb;
+ (BOOL)setupHb:(NSInteger)hb;
+ (BOOL)layoutSubviewsHb:(NSInteger)hb;
+ (BOOL)layoutToolbarButtonsWithsamebuttonsizeIncontainerrectHorizontallyHb:(NSInteger)hb;
+ (BOOL)buttonTappedHb:(NSInteger)hb;
+ (BOOL)clampButtonFrameHb:(NSInteger)hb;
+ (BOOL)setClampButtonHiddenHb:(NSInteger)hb;
+ (BOOL)setClampButtonGlowingHb:(NSInteger)hb;
+ (BOOL)setRotateCounterClockwiseButtonHiddenHb:(NSInteger)hb;
+ (BOOL)resetButtonEnabledHb:(NSInteger)hb;
+ (BOOL)setResetButtonEnabledHb:(NSInteger)hb;
+ (BOOL)doneButtonFrameHb:(NSInteger)hb;
+ (BOOL)setCancelTextButtonTitleHb:(NSInteger)hb;
+ (BOOL)setDoneTextButtonTitleHb:(NSInteger)hb;
+ (BOOL)doneImageHb:(NSInteger)hb;
+ (BOOL)cancelImageHb:(NSInteger)hb;
+ (BOOL)rotateCCWImageHb:(NSInteger)hb;
+ (BOOL)rotateCWImageHb:(NSInteger)hb;
+ (BOOL)resetImageHb:(NSInteger)hb;
+ (BOOL)clampImageHb:(NSInteger)hb;
+ (BOOL)setRotateClockwiseButtonHiddenHb:(NSInteger)hb;
+ (BOOL)rotateButtonHb:(NSInteger)hb;
+ (BOOL)setStatusBarHeightInsetHb:(NSInteger)hb;

@end
