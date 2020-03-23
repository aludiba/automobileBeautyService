//
//  AJgamePlanSaveTableViewCell.m
//  wineAwake
//
//  Created by bykj on 2019/10/7.
//  Copyright © 2019 hbc. All rights reserved.
//

#import "AJgamePlanSaveTableViewCell.h"
@interface AJgamePlanSaveTableViewCell()
@property(nonatomic, strong)UIButton *AJsaveButton;//保存按钮
@end
@implementation AJgamePlanSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = AJH_Color(44, 77, 93, 0.7);
        [self.contentView addSubview:self.AJsaveButton];
        [self.AJsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(30);
            make.leading.equalTo(self.contentView).offset(120);
            make.height.mas_equalTo(60);
            make.trailing.equalTo(self.contentView).offset(-120);
            make.bottom.equalTo(self.contentView).offset(-30);
        }];
    }
    return self;
}
- (void)AJbtnClick{
    if (self.AJgamePlanSaveB) {
        self.AJgamePlanSaveB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)AJsaveButton{
    if (!_AJsaveButton) {
        _AJsaveButton = [[UIButton alloc] init];
        [_AJsaveButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_AJsaveButton.titleLabel setFont:[UIFont systemFontOfSize:25]];
        [_AJsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
        [_AJsaveButton setBackgroundColor:AJH_Color(24, 50, 62, 1)];
        _AJsaveButton.layer.cornerRadius = 16.0f;
        _AJsaveButton.layer.masksToBounds = YES;
        _AJsaveButton.layer.borderWidth = 2.0f;
        _AJsaveButton.layer.borderColor = [UIColor grayColor].CGColor;
        [_AJsaveButton addTarget:self action:@selector(AJbtnClick) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AJsaveButton;
}
@end
