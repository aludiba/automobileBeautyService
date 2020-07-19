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

@interface QMPhotoEffectViewController (Bm-Deletecomments)
+ (BOOL)deallocBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)initWithImageBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)viewDidLoadBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)prefersStatusBarHiddenBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupUIBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)setupGPUPictureBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)filterThemeViewBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)cropThemeViewBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)frameThemeViewBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)buttonTappedBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)changeFilterBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)changeFilterAlphaBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)changeImageBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)restoreImageBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)saveImageBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)hideDragViewBorderBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)generateFrameOnImageBm-Deletecomments:(NSInteger)-deleteComments;
+ (BOOL)generateEffectedImageWithCompleteBlockBm-Deletecomments:(NSInteger)-deleteComments;

@end
