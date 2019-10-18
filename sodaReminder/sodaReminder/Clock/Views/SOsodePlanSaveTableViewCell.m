//
//  SOsodePlanSaveTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "SOsodePlanSaveTableViewCell.h"
@interface SOsodePlanSaveTableViewCell()
@property(nonatomic, strong)UIButton *saveButton;//保存按钮
@end
@implementation SOsodePlanSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = SOH_Color(244, 245, 246, 1);
        [self.contentView addSubview:self.saveButton];
        
        [self.saveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(60);
            make.leading.equalTo(self.contentView).offset(100);
            make.height.mas_equalTo(60);
            make.trailing.equalTo(self.contentView).offset(-100);
            make.bottom.equalTo(self.contentView).offset(-60);
        }];
    }
    return self;
}
- (void)btnClick{
    if (self.SOsodePlanSaveB) {
        self.SOsodePlanSaveB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)saveButton{
    if (!_saveButton) {
        _saveButton = [[UIButton alloc] init];
        [_saveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_saveButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        [_saveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_saveButton setBackgroundColor:[UIColor yellowColor]];
        _saveButton.layer.cornerRadius = 16.0f;
        _saveButton.layer.masksToBounds = YES;
        [_saveButton addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _saveButton;
}
@end
