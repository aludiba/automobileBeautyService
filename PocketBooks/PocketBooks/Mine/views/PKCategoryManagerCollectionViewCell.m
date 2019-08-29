//
//  PKCategoryManagerCollectionViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKCategoryManagerCollectionViewCell.h"
@interface PKCategoryManagerCollectionViewCell()
@property(nonatomic, strong)UIButton *operationButton;
@property(nonatomic, strong)UILabel *contentLabel;
@end
@implementation PKCategoryManagerCollectionViewCell
#pragma mark - 属性懒加载
- (UIButton *)operationButton{
    if (!_operationButton) {
        _operationButton = [UIButton buttonWithType:UIButtonTypeSystem];
//        _operationButton
    }
    return _operationButton;
}
@end
