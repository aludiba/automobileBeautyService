#import <UIKit/UIKit.h>
#import "QMPhotoEffectViewController.h"
#import "QMImageFilter.h"
#import "QMFilterThemeView.h"
#import "QMShareManager.h"
#import "QMCropThemeView.h"
#import "QMCropModel.h"
#import "UIImage+Clip.h"
#import "QMProgressHUD.h"
#import "QMFrameThemeView.h"
#import "QMDragView.h"
#import "UIImage+SubImage.h"
#import "QMBaseImageView.h"
#import <GPUImage.h>
#import <Masonry.h>
#import "TKImageView.h"
#import "UIImage+Rotate.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import "QMPhotoEffectViewController+Bm.h"

@interface QMPhotoEffectViewController (BmHb)
+ (BOOL)deallocBmHb:(NSInteger)hb;
+ (BOOL)initWithImageBmHb:(NSInteger)hb;
+ (BOOL)viewDidLoadBmHb:(NSInteger)hb;
+ (BOOL)prefersStatusBarHiddenBmHb:(NSInteger)hb;
+ (BOOL)setupUIBmHb:(NSInteger)hb;
+ (BOOL)setupGPUPictureBmHb:(NSInteger)hb;
+ (BOOL)filterThemeViewBmHb:(NSInteger)hb;
+ (BOOL)cropThemeViewBmHb:(NSInteger)hb;
+ (BOOL)frameThemeViewBmHb:(NSInteger)hb;
+ (BOOL)buttonTappedBmHb:(NSInteger)hb;
+ (BOOL)changeFilterBmHb:(NSInteger)hb;
+ (BOOL)changeFilterAlphaBmHb:(NSInteger)hb;
+ (BOOL)changeImageBmHb:(NSInteger)hb;
+ (BOOL)restoreImageBmHb:(NSInteger)hb;
+ (BOOL)saveImageBmHb:(NSInteger)hb;
+ (BOOL)hideDragViewBorderBmHb:(NSInteger)hb;
+ (BOOL)generateFrameOnImageBmHb:(NSInteger)hb;
+ (BOOL)generateEffectedImageWithCompleteBlockBmHb:(NSInteger)hb;

@end
