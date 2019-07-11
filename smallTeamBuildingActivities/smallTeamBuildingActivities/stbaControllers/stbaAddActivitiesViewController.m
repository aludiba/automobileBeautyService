//
//  stbaAddActivitiesViewController.m
//  smallTeamBuildingActivities
//
//  Created by bykj on 2019/7/4.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "stbaAddActivitiesViewController.h"
#import "stbaAddActivitiesViewModel.h"
#import "stbaAddActivitiesEditorTableViewCell.h"
#import "stbaAddActivitiesSelectAddTableViewCell.h"
@interface stbaAddActivitiesViewController()<UITableViewDataSource,UITableViewDelegate>

@end
@implementation stbaAddActivitiesViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"Activity";
}
@end
