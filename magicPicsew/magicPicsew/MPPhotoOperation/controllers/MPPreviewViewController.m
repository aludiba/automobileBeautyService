//
//  MPPreviewViewController.m
//  magicPicsew
//
//  Created by 123 on 2021/6/1.
//

#import "MPPreviewViewController.h"
#import "MPMainPhotoModel.h"
#import "UIImage+UIImageExtras.h"
@interface MPPreviewViewController ()<UIScrollViewDelegate>

@property (nonatomic, strong) NSMutableArray *MPphotoImagesArray;

@property (nonatomic, strong) UIImageView *MPcompositeImageView;//合成照片

@property (nonatomic, strong) UIScrollView *MPphotoScrollView;//滚动框

@end

@implementation MPPreviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"预览";
    [self MPsetContentView];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self MPsetContentLayOutView];
}
- (void)MPsetContentView{
    [self.view addSubview:self.MPphotoScrollView];
    [self.MPphotoScrollView addSubview:self.MPcompositeImageView];
}
- (void)MPsetContentLayOutView{
    [self.MPphotoScrollView setFrame:CGRectMake(0, MP_NAVIGATION_BAR_H, MPWIDTH, MPHEIGHT - MP_NAVIGATION_BAR_H)];
    [self.MPcompositeImageView setFrame:CGRectMake(0, 0, self.MPcompositeImage.size.width, self.MPcompositeImage.size.height)];
    self.MPcompositeImageView.image = self.MPcompositeImage;
    self.MPphotoScrollView.contentSize = CGSizeMake(self.MPcompositeImage.size.width, self.MPcompositeImage.size.height);
}
#pragma mark - 属性懒加载
- (UIScrollView *)MPphotoScrollView{
    if (!_MPphotoScrollView) {
        _MPphotoScrollView = [[UIScrollView alloc] init];
        _MPphotoScrollView.delegate = self;
        _MPphotoScrollView.backgroundColor = [UIColor whiteColor];
        _MPphotoScrollView.showsVerticalScrollIndicator = NO;
        _MPphotoScrollView.showsHorizontalScrollIndicator = NO;
    }
    return _MPphotoScrollView;
}
- (UIImageView *)MPcompositeImageView{
    if (!_MPcompositeImageView) {
        _MPcompositeImageView = [[UIImageView alloc] init];
        _MPcompositeImageView.backgroundColor = [UIColor whiteColor];
        _MPcompositeImageView.contentMode = UIViewContentModeScaleAspectFit;
        _MPcompositeImageView.autoresizesSubviews = YES;
    }
    return _MPcompositeImageView;
}
- (NSMutableArray *)MPphotoImagesArray{
    if (!_MPphotoImagesArray) {
        _MPphotoImagesArray = [[NSMutableArray alloc] init];
    }
    return _MPphotoImagesArray;
}
@end
