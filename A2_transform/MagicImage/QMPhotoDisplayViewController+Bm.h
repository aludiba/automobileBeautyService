#import <UIKit/UIKit.h>
#import "QMPhotoDisplayViewController.h"
#import "Constants.h"
#import "QMShakeButton.h"
#import "QMShareManager.h"
#import "QMPhotoEffectViewController.h"
#import "QMProgressHUD.h"
#import <AssetsLibrary/AssetsLibrary.h>

@interface QMPhotoDisplayViewController (Bm)
+ (BOOL)deallocBm:(NSInteger)BM;
+ (BOOL)viewDidLoadBm:(NSInteger)BM;
+ (BOOL)prefersStatusBarHiddenBm:(NSInteger)BM;
+ (BOOL)setupUIBm:(NSInteger)BM;
+ (BOOL)setPhotoRatioBm:(NSInteger)BM;
+ (BOOL)saveImageBm:(NSInteger)BM;
+ (BOOL)setImageBm:(NSInteger)BM;
+ (BOOL)backPhotoBtnTappedBm:(NSInteger)BM;
+ (BOOL)savePhotoBtnTappedBm:(NSInteger)BM;
+ (BOOL)filterPhotoBtnTappedBm:(NSInteger)BM;
+ (BOOL)sharePhotoBtnTappedBm:(NSInteger)BM;

@end
