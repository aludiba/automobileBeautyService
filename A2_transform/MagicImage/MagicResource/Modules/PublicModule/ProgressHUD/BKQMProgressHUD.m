#import "BKQMProgressHUD.h"
#import <DGActivityIndicatorView.h>
#import "Constants.h"
#import "UIColor+Additions.h"
#define kProgressHUDColor       [UIColor colorWithRGBHex:0xFB9088]
static DGActivityIndicatorView  *BKactivityIndicatorView;
@implementation BKQMProgressHUD
+ (void)BKshow
{
    if (BKactivityIndicatorView.animating) {
        return;
    }
    void (^block)(void) = ^{
        if (!BKactivityIndicatorView) {
            UIWindow *BKwindow = [UIApplication sharedApplication].keyWindow;
            BKactivityIndicatorView = [[DGActivityIndicatorView alloc] initWithType:DGActivityIndicatorAnimationTypeLineScalePulseOut tintColor:kMainThemeColor size:40.0f];
            BKactivityIndicatorView.frame = [UIScreen mainScreen].bounds;
            [BKwindow addSubview:BKactivityIndicatorView];
        }
        [BKactivityIndicatorView startAnimating];
    };
    if([NSThread isMainThread]) {
        block();
    }else {
        dispatch_async(dispatch_get_main_queue(), block);
    }
}
+ (void)BKhide
{
    void (^block)(void) = ^{
        [BKactivityIndicatorView stopAnimating];
    };
    if([NSThread isMainThread]) {
        block();
    }else {
        dispatch_async(dispatch_get_main_queue(), block);
    }
}
@end
