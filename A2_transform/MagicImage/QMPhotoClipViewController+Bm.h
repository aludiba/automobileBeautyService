#import <UIKit/UIKit.h>
#import "QMPhotoClipViewController.h"
#import "Constants.h"
#import "UIColor+Additions.h"
#import <Masonry.h>

@interface QMPhotoClipViewController (Bm)
+ (BOOL)viewDidLoadBm:(NSInteger)BM;
+ (BOOL)prefersStatusBarHiddenBm:(NSInteger)BM;
+ (BOOL)preferredStatusBarStyleBm:(NSInteger)BM;
+ (BOOL)setupUIBm:(NSInteger)BM;
+ (BOOL)setupGestureBm:(NSInteger)BM;
+ (BOOL)buttonTappedBm:(NSInteger)BM;
+ (BOOL)handlePanGestureBm:(NSInteger)BM;
+ (BOOL)rotateImageBm:(NSInteger)BM;
+ (BOOL)scaleImageBm:(NSInteger)BM;

@end
