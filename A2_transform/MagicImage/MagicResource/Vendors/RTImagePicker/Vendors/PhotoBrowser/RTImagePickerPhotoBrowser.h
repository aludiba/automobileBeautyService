#import <UIKit/UIKit.h>
#import "RTImagePickerPhoto.h"
#import "RTImagePickerPhotoProtocol.h"
#import "UIView+Geometry.h"
#if 0 
#define MWLog(x, ...) NSLog(x, ## __VA_ARGS__);
#else
#define MWLog(x, ...)
#endif
@class RTImagePickerPhotoBrowser;
@protocol RTImagePickerPhotoBrowserDelegate <NSObject>
- (NSUInteger)numberOfPhotosInPhotoBrowser:(RTImagePickerPhotoBrowser *)photoBrowser;
- (id <RTImagePickerPhoto>)photoBrowser:(RTImagePickerPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index;
@optional
- (id <RTImagePickerPhoto>)photoBrowser:(RTImagePickerPhotoBrowser *)photoBrowser thumbPhotoAtIndex:(NSUInteger)index;
- (NSString *)photoBrowser:(RTImagePickerPhotoBrowser *)photoBrowser titleForPhotoAtIndex:(NSUInteger)index;
- (void)photoBrowser:(RTImagePickerPhotoBrowser *)photoBrowser didDisplayPhotoAtIndex:(NSUInteger)index;
- (BOOL)photoBrowser:(RTImagePickerPhotoBrowser *)photoBrowser isPhotoSelectedAtIndex:(NSUInteger)index;
- (void)photoBrowser:(RTImagePickerPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index selectedChanged:(BOOL)selected;
- (void)photoBrowserDidFinishModalPresentation:(RTImagePickerPhotoBrowser *)photoBrowser;
- (void)photoBrowserDidChangeHidden:(RTImagePickerPhotoBrowser *)photoBrowser State:(BOOL)state;
@end
@interface RTImagePickerPhotoBrowser : UIViewController <UIScrollViewDelegate, UIActionSheetDelegate>
@property (nonatomic, weak) IBOutlet id<RTImagePickerPhotoBrowserDelegate> delegate;
@property (nonatomic) BOOL zoomPhotosToFill;
@property (nonatomic) BOOL displayNavArrows;
@property (nonatomic) BOOL displaySelectionButtons;
@property (nonatomic) BOOL alwaysShowControls;
@property (nonatomic) BOOL autoPlayOnAppear;
@property (nonatomic) NSUInteger delayToHideElements;
@property (nonatomic, readonly) NSUInteger currentIndex;
@property (nonatomic, strong) NSString *customImageSelectedIconName;
@property (nonatomic, strong) NSString *customImageSelectedSmallIconName;
- (id)initWithPhotos:(NSArray *)photosArray;
- (id)initWithDelegate:(id <RTImagePickerPhotoBrowserDelegate>)delegate;
- (void)reloadData;
- (void)setCurrentPhotoIndex:(NSUInteger)index;
- (void)showNextPhotoAnimated:(BOOL)animated;
- (void)showPreviousPhotoAnimated:(BOOL)animated;
@end
