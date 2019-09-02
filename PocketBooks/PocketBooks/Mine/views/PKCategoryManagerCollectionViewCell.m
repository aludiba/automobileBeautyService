//
//  PKCategoryManagerCollectionViewCell.m
//  PocketBooks
//
//  Created by bykj on 2019/8/29.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "PKCategoryManagerCollectionViewCell.h"
#import "PKCategoryManagementModel.h"
@interface PKCategoryManagerCollectionViewCell()
@property(nonatomic, strong)UIButton *operationButton;
@property(nonatomic, strong)UILabel *contentLabel;
@end
@implementation PKCategoryManagerCollectionViewCell
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.contentLabel];
        [self.contentView addSubview:self.operationButton];
        
        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.leading.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView);
        }];
        [self.operationButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView);
            make.trailing.equalTo(self.contentView);
            make.width.mas_equalTo(20);
            make.height.mas_equalTo(20);
        }];
    }
    return self;
}
//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        self.contentView.backgroundColor = [UIColor whiteColor];
//        [self.contentView addSubview:self.contentLabel];
//        [self.contentView addSubview:self.operationButton];
//        
//        [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(self.contentView);
//            make.leading.equalTo(self.contentView);
//            make.trailing.equalTo(self.contentView);
//            make.bottom.equalTo(self.contentView);
//        }];
//        [self.operationButton mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.equalTo(self.contentView);
//            make.trailing.equalTo(self.contentView);
//            make.width.mas_equalTo(20);
//            make.height.mas_equalTo(20);
//        }];
//    }
//    return self;
//}
//- (void)setIsEdit:(Boolean)isEdit{
//    _isEdit = isEdit;
//    if (_isEdit) {
//        self.operationButton.hidden = NO;
//        if (self.model.isSelect) {
//            [self.operationButton setImage:[UIImage imageNamed:@"PK_btn_reduce"] forState:UIControlStateNormal];
//        }else{
//            [self.operationButton setImage:[UIImage imageNamed:@"PK_btn_plus"] forState:UIControlStateNormal];
//        }
//    }else{
//        self.operationButton.hidden = YES;
//    }
//}
- (void)setModel:(PKCategoryManagementModel *)model{
    _model = model;
    self.contentLabel.text = _model.content;
    if (self.isEdit) {
        self.operationButton.hidden = NO;
        if (_model.isSelect) {
            [self.operationButton setImage:[UIImage imageNamed:@"PK_btn_reduce"] forState:UIControlStateNormal];
        }else{
            [self.operationButton setImage:[UIImage imageNamed:@"PK_btn_plus"] forState:UIControlStateNormal];
        }
    }else{
        self.operationButton.hidden = YES;
    }
    self.operationButton.selected = _model.isSelect;
}
- (void)btnClick:(UIButton *)sender{
    sender.selected = !sender.selected;
    self.model.isSelect = !self.model.isSelect;
    if (self.model.isSelect) {
         [self.operationButton setImage:[UIImage imageNamed:@"PK_btn_reduce"] forState:UIControlStateNormal];
    }else{
        [self.operationButton setImage:[UIImage imageNamed:@"PK_btn_plus"] forState:UIControlStateNormal];
    }
    if (self.finishSelectCategoryBlock) {
        self.finishSelectCategoryBlock(self.model);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)operationButton{
    if (!_operationButton) {
        _operationButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_operationButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _operationButton;
}
- (UILabel *)contentLabel{
    if (!_contentLabel) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.backgroundColor = PKH_Color(242, 242, 242, 1);
        _contentLabel.textAlignment = NSTextAlignmentCenter;
        _contentLabel.layer.cornerRadius = 10.0f;
        _contentLabel.layer.masksToBounds = YES;
        _contentLabel.textColor = [UIColor blackColor];
        _contentLabel.font = [UIFont systemFontOfSize:14];
        _contentLabel.numberOfLines = 0;
    }
    return _contentLabel;
}
@end
