//
//  EAsodePlanSaveTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "EAsodePlanSaveTableViewCell.h"
@interface EAsodePlanSaveTableViewCell()
@property(nonatomic, strong)UIButton *EAsaveButton;//保存按钮
@end
@implementation EAsodePlanSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.5];
        [self.contentView addSubview:self.EAsaveButton];
        
        [self.EAsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(60);
            make.leading.equalTo(self.contentView).offset(100);
            make.height.mas_equalTo(60);
            make.trailing.equalTo(self.contentView).offset(-100);
            make.bottom.equalTo(self.contentView).offset(-60);
        }];
    }
    return self;
}
- (void)EAbtnClick{
    if (self.EAsodePlanSaveB) {
        self.EAsodePlanSaveB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)EAsaveButton{
    if (!_EAsaveButton) {
        _EAsaveButton = [[UIButton alloc] init];
        [_EAsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_EAsaveButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        [_EAsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_EAsaveButton setBackgroundColor:[UIColor purpleColor]];
        _EAsaveButton.layer.cornerRadius = 16.0f;
        _EAsaveButton.layer.masksToBounds = YES;
        [_EAsaveButton addTarget:self action:@selector(EAbtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _EAsaveButton;
}
@end
