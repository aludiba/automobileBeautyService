//
//  SDTextPictureView.m
//  Simple Diary
//
//  Created by bykj on 2019/7/26.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "SDTextPictureView.h"
#import "SDDiaryViewController.h"
#import "SDWriteDiaryViewController.h"
#import "MLAlbumListTableViewController.h"
#import "MLAlbumImageCollectionViewCell.h"
#import "MLCustomSheet.h"
#import "MLShowBigImage.h"
@interface SDTextPictureView()<UICollectionViewDelegate,UICollectionViewDataSource,UINavigationControllerDelegate, UIImagePickerControllerDelegate>
@end
@implementation SDTextPictureView
- (instancetype)init
{
    self = [super init];
    if (self) {
         [PHCollectionList fetchTopLevelUserCollectionsWithOptions:nil];
        self.maxCount = 6;
        [self initCollectionView];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self scrollsToBottomAnimated:NO];
}
- (void)dismissController{
    [[SDTabBarController shareInstance].SDDiaryVC.wdVC dismissViewControllerAnimated:YES completion:nil];
}
- (void)photoListDidClick{
    if (self.selectArray.count >= self.maxCount) {
        [MBProgressHUD SDshowReminderText:NSLocalizedString(@"最多只能选择6张图片", nil)];
        return;
    }
        __weak typeof(self) weakSelf = self;
                    MLAlbumListTableViewController *vc = [[MLAlbumListTableViewController alloc] init];
                    vc.selctImageArray = self.selectArray;
                    vc.maxCount = self.maxCount;
                    vc.okClickComplete = ^(NSArray<ImageModel *> *images){
                        
                        [weakSelf.imageDataSource removeAllObjects];
                        dispatch_async(dispatch_get_global_queue(0, 0), ^{
                            [images enumerateObjectsUsingBlock:^(ImageModel * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                                if (obj.asset) {
                                    [MLPhotoImageHelper getImageDataWithAsset:obj.asset complete:^(UIImage *image,UIImage*HDImage) {
                                        if (image) {
                                            
                                            [weakSelf.imageDataSource addObject:image];
                                            
                                        }
                                    }];
                                    
                                }
                                else{
                                    [weakSelf.imageDataSource addObject:obj.thumbImage];
                                }
                                dispatch_async(dispatch_get_main_queue(), ^{
                                    
                                    [weakSelf.collectionView reloadData];
                                    
                                    [weakSelf scrollsToBottomAnimated:NO];
                                });
                                
                            }];
                        });
                    };
                    [[SDTabBarController shareInstance].SDDiaryVC.wdVC.navigationController pushViewController:vc animated:YES];
}
#pragma mark - UICollectionViewDelegate & UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    if (self.imageDataSource.count == 0){
        return 1;
    }
    else{
        return self.imageDataSource.count+1;
    }
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    MLAlbumImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    if (indexPath.row == self.imageDataSource.count) {
        cell.coverImageView.image = [UIImage imageNamed:@"plus"];
        cell.closeButton.hidden = YES;
    }else{
        cell.coverImageView.image = self.imageDataSource[indexPath.row];
        cell.closeButton.hidden = NO;
    }
    cell.coverImageView.userInteractionEnabled = YES;
    cell.coverImageView.tag = indexPath.row;
    [cell.coverImageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapProfileImage:)]];
    cell.closeButton.tag = indexPath.row;
    [cell.closeButton setImage:[UIImage imageNamed:@"close"] forState:UIControlStateNormal];
    [cell.closeButton addTarget:self action:@selector(closeButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"点击了ITEM");
}
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(2, 2, 2, 2);
}
#pragma mark - 图片cell点击事件
- (void) tapProfileImage:(UITapGestureRecognizer *)gestureRecognizer{
    UIImageView *clickImageView = (UIImageView*)gestureRecognizer.view;
    NSInteger index = clickImageView.tag;
    
    if (index == self.imageDataSource.count) {
        [self photoListDidClick];
    }
    else
    {
        [[MLShowBigImage shareInstance] showBigImage:clickImageView];
    }
}
- (void)closeButtonAction:(UIButton *)sender{
    [self.selectArray removeObjectAtIndex:sender.tag];
    [self.imageDataSource removeObjectAtIndex:sender.tag];
    [self.collectionView reloadData];
}
- (void)initCollectionView
{
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.minimumLineSpacing = 2.0;
    layout.minimumInteritemSpacing = 0;
    CGFloat width = (SDWIDTH - 2 * 3) / 4;
    layout.itemSize = CGSizeMake(width, width);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.collectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 0, SDWIDTH, width + 10) collectionViewLayout:layout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [SDTabBarController shareInstance].SDDiaryVC.wdVC.automaticallyAdjustsScrollViewInsets = NO;
    if (self.collectionSuperView) {
        [self.collectionSuperView addSubview:self.collectionView];
    }
    else
    {
        [self addSubview:self.collectionView];
    }
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"MLAlbumImageCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell"];
}

- (void)scrollsToBottomAnimated:(BOOL)animated
{
    [self layoutIfNeeded];
    CGFloat offset = self.collectionView.contentSize.width - self.collectionView.bounds.size.width;
    if (offset > 0)
    {
        [self.collectionView setContentOffset:CGPointMake(offset, 0) animated:animated];
    }
}
#pragma mark - 属性懒加载
- (NSMutableArray*)imageDataSource
{
    if (!_imageDataSource ) {
        _imageDataSource = [NSMutableArray array];
    }
    return _imageDataSource;
}
- (NSMutableArray *)selectArray
{
    if (!_selectArray ) {
        _selectArray = [NSMutableArray array];
    }
    return _selectArray;
}
@end
