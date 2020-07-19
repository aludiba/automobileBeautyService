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

@interface QMPhotoEffectViewController (Bm)
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)initWithImageBm:(NSInteger)BM;
+ (BOOL)viewDidLoadBm:(NSInteger)BM;
+ (BOOL)prefersStatusBarHiddenBm:(NSInteger)BM;
+ (BOOL)setupUIBm:(NSInteger)BM;
+ (BOOL)setupGPUPictureBm:(NSInteger)BM;
+ (BOOL)filterThemeViewBm:(NSInteger)BM;
+ (BOOL)cropThemeViewBm:(NSInteger)BM;
+ (BOOL)frameThemeViewBm:(NSInteger)BM;
+ (BOOL)buttonTappedBm:(NSInteger)BM;
+ (BOOL)changeFilterBm:(NSInteger)BM;
+ (BOOL)changeFilterAlphaBm:(NSInteger)BM;
+ (BOOL)changeImageBm:(NSInteger)BM;
+ (BOOL)restoreImageBm:(NSInteger)BM;
+ (BOOL)saveImageBm:(NSInteger)BM;
+ (BOOL)hideDragViewBorderBm:(NSInteger)BM;
+ (BOOL)generateFrameOnImageBm:(NSInteger)BM;
+ (BOOL)generateEffectedImageWithCompleteBlockBm:(NSInteger)BM;

@end
