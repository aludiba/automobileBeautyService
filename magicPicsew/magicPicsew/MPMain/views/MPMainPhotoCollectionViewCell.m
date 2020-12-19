//
//  MPMainPhotoCollectionViewCell.m
//  magicPicsew
//
//  Created by 123 on 2020/12/19.
//

#import "MPMainPhotoCollectionViewCell.h"
#import "MPMainPhotoModel.h"
#import "UIImage+UIImageExt.h"

@interface MPMainPhotoCollectionViewCell()

@property (nonatomic, strong) UIImageView *MPContentImgView;

@end

@implementation MPMainPhotoCollectionViewCell
#pragma mark - action
- (void)setPhotoModel:(MPMainPhotoModel *)photoModel{
    _photoModel = photoModel;
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    CGSize size = CGSizeZero;
    // 同步获得图片, 只会返回1张图片
    options.synchronous = YES;
    // 从asset中获得图片
    [[PHImageManager defaultManager] requestImageForAsset:_photoModel.asset targetSize:size contentMode:PHImageContentModeDefault options:options resultHandler:^(UIImage * _Nullable result, NSDictionary * _Nullable info) {
        self.MPContentImgView.image = [result MPimageByScalingAndCroppingForSize:CGSizeMake((MPWIDTH - 5) / 4, (MPWIDTH - 5) / 4)];
    }];
}
#pragma mark - 属性懒加载
- (UIImageView *)MPContentImgView{
    if (!_MPContentImgView) {
        _MPContentImgView = [[UIImageView alloc] init];
        [self.contentView addSubview:_MPContentImgView];
        [_MPContentImgView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self.contentView);
            make.top.equalTo(self.contentView);
            make.right.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
    }
    return _MPContentImgView;
}
@end
