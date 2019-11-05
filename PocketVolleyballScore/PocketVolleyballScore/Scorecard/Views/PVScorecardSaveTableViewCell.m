//
//  PVScorecardSaveTableViewCell.m
//  PocketVolleyballScore
//
//  Created by bykj on 2019/11/5.
//  Copyright © 2019 com. All rights reserved.
//

#import "PVScorecardSaveTableViewCell.h"
@interface PVScorecardSaveTableViewCell()
@property(nonatomic, strong)UIButton *PVsaveButton;//保存按钮
@end
@implementation PVScorecardSaveTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.contentView.backgroundColor = [UIColor cyanColor];
        [self.contentView addSubview:self.PVsaveButton];
        
        [self.PVsaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.contentView).offset(10);
            make.centerX.equalTo(self.contentView);
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(44);
            make.bottom.equalTo(self.contentView).offset(-10);
        }];
    }
    return self;
}
#pragma mark - action
- (void)PVbtnClick{
    if (self.PVScorecardSaveB) {
        self.PVScorecardSaveB(self);
    }
}
#pragma mark - 属性懒加载
- (UIButton *)PVsaveButton{
    if (!_PVsaveButton) {
        _PVsaveButton = [[UIButton alloc] init];
        _PVsaveButton.backgroundColor = [UIColor systemBlueColor];
        [_PVsaveButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_PVsaveButton.titleLabel setFont:[UIFont systemFontOfSize:20]];
        _PVsaveButton.layer.cornerRadius = 8.0f;
        _PVsaveButton.layer.masksToBounds = YES;
        [_PVsaveButton addTarget:self action:@selector(PVbtnClick) forControlEvents:UIControlEventTouchUpInside];
        [_PVsaveButton setTitle:NSLocalizedString(@"保存", nil) forState:UIControlStateNormal];
    }
    return _PVsaveButton;
}
@end
