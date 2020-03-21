//
//  AHsodePlanSaveTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AHsodePlanSaveTableViewCell.h"
@interface AHsodePlanSaveTableViewCell()
@property(nonatomic, strong)UIButton *AHsaveButton;//保存按钮
@end
@implementation AHsodePlanSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.AHsaveButton];
        
        [self.AHsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(60);
            make.leading.equalTo(self.contentView).offset(100);
            make.height.mas_equalTo(60);
            make.trailing.equalTo(self.contentView).offset(-100);
            make.bottom.equalTo(self.contentView).offset(-60);
        }];
    }
    return self;
}
- (void)AHbtnClick{
    if (self.AHsodePlanSaveB) {
        self.AHsodePlanSaveB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)AHsaveButton{
    if (!_AHsaveButton) {
        _AHsaveButton = [[UIButton alloc] init];
        [_AHsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AHsaveButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        [_AHsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AHsaveButton setBackgroundColor:[UIColor purpleColor]];
        _AHsaveButton.layer.cornerRadius = 16.0f;
        _AHsaveButton.layer.masksToBounds = YES;
        [_AHsaveButton addTarget:self action:@selector(AHbtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AHsaveButton;
}
@end
