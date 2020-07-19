#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define RTImagePickerPhoto_LOADING_DID_END_NOTIFICATION @"RTImagePickerPhoto_LOADING_DID_END_NOTIFICATION"
#define RTImagePickerPhoto_PROGRESS_NOTIFICATION @"RTImagePickerPhoto_PROGRESS_NOTIFICATION"
@protocol RTImagePickerPhoto <NSObject>
@required
@property (nonatomic, strong) UIImage *underlyingImage;
- (void)loadUnderlyingImageAndNotify;
- (void)performLoadUnderlyingImageAndNotify;
- (void)unloadUnderlyingImage;
@optional
@property (nonatomic) BOOL emptyImage;
@property (nonatomic) BOOL isVideo;
- (void)getVideoURL:(void (^)(NSURL *url))completion;
- (void)cancelAnyLoading;
@end
