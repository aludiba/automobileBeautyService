//
//  autoBeuAddViewController.m
//  automobileBeautyService
//
//  Created by bykj on 2019/6/19.
//  Copyright © 2019 hgg. All rights reserved.
//

#import "autoBeuAddViewController.h"
#import "autoBeuAddViewModel.h"
#import "autoBeuDataModel.h"
#import "autoBeuPaintModel.h"
#import "autoBeuInteriorModel.h"
#import "autoBeuNacelleModel.h"
#import "autoBeuGlassModel.h"
#import "autoBeuTiresAndHubsModel.h"
#import "autoBeuHeadlightModel.h"
#import "autoBeuEditorTableViewCell.h"
#import "autoBeuAddMoreTableViewCell.h"
#import "autoBeuAddSingleTableViewCell.h"
@interface autoBeuAddViewController()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic, strong)UITableView *autoBeumainTable;
@property(nonatomic, strong)NSMutableArray *autoBeuviewDataArray;
@property(nonatomic, strong)UIButton *autoBeueditButton;
@property(nonatomic, strong)UIButton *autoBeusaveButton;
@end
@implementation autoBeuAddViewController
- (void)viewDidLoad{
    [super viewDidLoad];
    CGFloat aRedValue = arc4random() % 255;
    CGFloat aGreenValue = arc4random() % 255;
    CGFloat aBlueValue = arc4random() % 255;
    self.view.backgroundColor = [UIColor colorWithRed:aRedValue/256.0 green:aGreenValue/256.0 blue:aBlueValue/256.0 alpha:1.0];
    if (self.currentType == autoBeuAddViewControllerTypeAdd) {
        self.title = @"Add";
    }else if (self.currentType == autoBeuAddViewControllerTypeDetail){
        self.title = @"Detail";
    }
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self autoBeuSetContent];
}
- (void)autoBeu_setupNavigationItems{
    [super autoBeu_setupNavigationItems];
    if (self.currentType == autoBeuAddViewControllerTypeDetail) {
        UIBarButtonItem *rightbaritem = [[UIBarButtonItem alloc] initWithCustomView:self.autoBeueditButton];
        self.navigationItem.rightBarButtonItem = rightbaritem;
    }
}
- (void)autoBeuSetContent{
    if (self.currentType == autoBeuAddViewControllerTypeAdd) {
    [self.autoBeuviewDataArray removeAllObjects];
    autoBeuAddViewModel *nameModel = [[autoBeuAddViewModel alloc] init];
    nameModel.currentType = autoBeuAddCellDefault;
    nameModel.title = @"name";
    nameModel.placeholder = @"Please fill in name";
    [self.autoBeuviewDataArray addObject:nameModel];
    
    autoBeuAddViewModel *carmodelModel = [[autoBeuAddViewModel alloc] init];
    carmodelModel.currentType = autoBeuAddCellDefault;
    carmodelModel.title = @"carmodel";
    carmodelModel.placeholder = @"Please fill in carModel";
    [self.autoBeuviewDataArray addObject:carmodelModel];
    
    autoBeuAddViewModel *licensePlateModel = [[autoBeuAddViewModel alloc] init];
    licensePlateModel.currentType = autoBeuAddCellDefault;
    licensePlateModel.title = @"licensePlate";
    licensePlateModel.placeholder = @"Please fill in licensePlate";
    [self.autoBeuviewDataArray addObject:licensePlateModel];
    
    autoBeuAddViewModel *phoneNumberModel = [[autoBeuAddViewModel alloc] init];
    phoneNumberModel.currentType = autoBeuAddCellDefault;
    phoneNumberModel.title = @"phoneNumber";
    phoneNumberModel.placeholder = @"Please fill in phoneNumber";
    [self.autoBeuviewDataArray addObject:phoneNumberModel];
    
    autoBeuAddViewModel *lineModel = [[autoBeuAddViewModel alloc] init];
    lineModel.currentType = autoBeuAddCellLine;
    [self.autoBeuviewDataArray addObject:lineModel];
        
        autoBeuAddViewModel *autoBeuPaintModel = [[autoBeuAddViewModel alloc] init];
        autoBeuPaintModel.currentType = autoBeuAddCellMore;
        autoBeuPaintModel.title = @"Paint";
        autoBeuPaintModel.placeholder = @"Please fill in remarks";
        autoBeuPaintModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic0 = [[NSMutableDictionary alloc] init];
        [dic0 setObject:@"oxideRemoval" forKey:@"name"];
        [dic0 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic0];
        NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
        [dic1 setObject:@"wax" forKey:@"name"];
        [dic1 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic1];
        NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
        [dic2 setObject:@"nickProcess" forKey:@"name"];
        [dic2 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic2];
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"orangePeelProcess" forKey:@"name"];
        [dic3 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic3];
        NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] init];
        [dic4 setObject:@"lossLightProcess" forKey:@"name"];
        [dic4 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic4];
        NSMutableDictionary *dic5 = [[NSMutableDictionary alloc] init];
        [dic5 setObject:@"sealingGlair" forKey:@"name"];
        [dic5 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic5];
        NSMutableDictionary *dic6 = [[NSMutableDictionary alloc] init];
        [dic6 setObject:@"coating" forKey:@"name"];
        [dic6 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic6];
        NSMutableDictionary *dic7 = [[NSMutableDictionary alloc] init];
        [dic7 setObject:@"platingCrystal" forKey:@"name"];
        [dic7 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic7];
        NSMutableDictionary *dic8 = [[NSMutableDictionary alloc] init];
        [dic8 setObject:@"pianoPaintRestoration" forKey:@"name"];
        [dic8 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic8];
        [self.autoBeuviewDataArray addObject:autoBeuPaintModel];
        
        autoBeuAddViewModel *autoBeuInteriorModel = [[autoBeuAddViewModel alloc] init];
        autoBeuInteriorModel.currentType = autoBeuAddCellMore;
        autoBeuInteriorModel.title = @"Interior";
        autoBeuInteriorModel.placeholder = @"Please fill in remarks";
        autoBeuInteriorModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic10 = [[NSMutableDictionary alloc] init];
        [dic10 setObject:@"cleaning" forKey:@"name"];
        [dic10 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic10];
        NSMutableDictionary *dic11 = [[NSMutableDictionary alloc] init];
        [dic11 setObject:@"leatherCare" forKey:@"name"];
        [dic11 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic11];
        NSMutableDictionary *dic12 = [[NSMutableDictionary alloc] init];
        [dic12 setObject:@"doorPlankCoating" forKey:@"name"];
        [dic12 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic12];
        NSMutableDictionary *dic13 = [[NSMutableDictionary alloc] init];
        [dic13 setObject:@"sprayDisinfection" forKey:@"name"];
        [dic13 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic13];
        NSMutableDictionary *dic14 = [[NSMutableDictionary alloc] init];
        [dic14 setObject:@"sprayDisinfection" forKey:@"name"];
        [dic14 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic14];
        NSMutableDictionary *dic15 = [[NSMutableDictionary alloc] init];
        [dic15 setObject:@"fabricCoating" forKey:@"name"];
        [dic15 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic15];
        [self.autoBeuviewDataArray addObject:autoBeuInteriorModel];
        
        autoBeuAddViewModel *autoBeuNacelleModel = [[autoBeuAddViewModel alloc] init];
        autoBeuNacelleModel.currentType = autoBeuAddCellMore;
        autoBeuNacelleModel.title = @"Nacelle";
        autoBeuNacelleModel.placeholder = @"Please fill in remarks";
        autoBeuNacelleModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic20 = [[NSMutableDictionary alloc] init];
        [dic20 setObject:@"engineRoomClean" forKey:@"name"];
        [dic20 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuNacelleModel.switchTitlesArray addObject:dic20];
        NSMutableDictionary *dic21 = [[NSMutableDictionary alloc] init];
        [dic21 setObject:@"cabinCoating" forKey:@"name"];
        [dic21 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuNacelleModel.switchTitlesArray addObject:dic21];
        [self.autoBeuviewDataArray addObject:autoBeuNacelleModel];
        
        autoBeuAddViewModel *autoBeuGlassModel = [[autoBeuAddViewModel alloc] init];
        autoBeuGlassModel.currentType = autoBeuAddCellMore;
        autoBeuGlassModel.title = @"Glass";
        autoBeuGlassModel.placeholder = @"Please fill in remarks";
        autoBeuGlassModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic30 = [[NSMutableDictionary alloc] init];
        [dic30 setObject:@"glassOilFilmRemoval" forKey:@"name"];
        [dic30 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic30];
        NSMutableDictionary *dic31 = [[NSMutableDictionary alloc] init];
        [dic31 setObject:@"platingGlassCrystal" forKey:@"name"];
        [dic31 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuGlassModel.switchTitlesArray addObject:dic31];
        [self.autoBeuviewDataArray addObject:autoBeuGlassModel];
        
        autoBeuAddViewModel *autoBeuTiresAndHubsModel = [[autoBeuAddViewModel alloc] init];
        autoBeuTiresAndHubsModel.currentType = autoBeuAddCellMore;
        autoBeuTiresAndHubsModel.title = @"TiresAndHubs";
        autoBeuTiresAndHubsModel.placeholder = @"Please fill in remarks";
        autoBeuTiresAndHubsModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic40 = [[NSMutableDictionary alloc] init];
        [dic40 setObject:@"tireCleaningAndCoating" forKey:@"name"];
        [dic40 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuTiresAndHubsModel.switchTitlesArray addObject:dic40];
        NSMutableDictionary *dic41 = [[NSMutableDictionary alloc] init];
        [dic41 setObject:@"wheelHubCleaningAndCrystalPlating" forKey:@"name"];
        [dic41 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuTiresAndHubsModel.switchTitlesArray addObject:dic41];
        [self.autoBeuviewDataArray addObject:autoBeuTiresAndHubsModel];
        
        autoBeuAddViewModel *autoBeuHeadlightModel = [[autoBeuAddViewModel alloc] init];
        autoBeuHeadlightModel.currentType = autoBeuAddCellMore;
        autoBeuHeadlightModel.title = @"Headlight";
        autoBeuHeadlightModel.placeholder = @"Please fill in remarks";
        autoBeuHeadlightModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic50 = [[NSMutableDictionary alloc] init];
        [dic50 setObject:@"oxidation" forKey:@"name"];
        [dic50 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuHeadlightModel.switchTitlesArray addObject:dic50];
        NSMutableDictionary *dic51 = [[NSMutableDictionary alloc] init];
        [dic51 setObject:@"renovation" forKey:@"name"];
        [dic51 setObject:[NSNumber numberWithBool:NO] forKey:@"switch"];
        [autoBeuHeadlightModel.switchTitlesArray addObject:dic51];
        [self.autoBeuviewDataArray addObject:autoBeuHeadlightModel];
        
        [self.autoBeumainTable reloadData];
    }else if (self.currentType == autoBeuAddViewControllerTypeDetail){
        autoBeuAddViewModel *nameModel = [[autoBeuAddViewModel alloc] init];
        nameModel.currentType = autoBeuAddCellDefault;
        nameModel.title = @"name";
        if (self.model.name.length) {
            nameModel.content = self.model.name;
        }else{
            nameModel.content = @"-";
        }
        nameModel.isDetail = YES;
        nameModel.placeholder = @"Please fill in name";
        [self.autoBeuviewDataArray addObject:nameModel];
        
        autoBeuAddViewModel *carmodelModel = [[autoBeuAddViewModel alloc] init];
        carmodelModel.currentType = autoBeuAddCellDefault;
        carmodelModel.title = @"carmodel";
        if (self.model.carModel.length) {
            carmodelModel.content = self.model.carModel;
        }else{
            carmodelModel.content = @"-";
        }
        carmodelModel.isDetail = YES;
        carmodelModel.placeholder = @"Please fill in carModel";
        [self.autoBeuviewDataArray addObject:carmodelModel];
        
        autoBeuAddViewModel *licensePlateModel = [[autoBeuAddViewModel alloc] init];
        licensePlateModel.currentType = autoBeuAddCellDefault;
        licensePlateModel.title = @"licensePlate";
        if (self.model.licensePlate.length) {
            licensePlateModel.content = self.model.licensePlate;
        }else{
            licensePlateModel.content = @"-";
        }
        licensePlateModel.isDetail = YES;
        licensePlateModel.placeholder = @"Please fill in licensePlate";
        [self.autoBeuviewDataArray addObject:licensePlateModel];
        
        autoBeuAddViewModel *phoneNumberModel = [[autoBeuAddViewModel alloc] init];
        phoneNumberModel.currentType = autoBeuAddCellDefault;
        phoneNumberModel.title = @"phoneNumber";
        phoneNumberModel.title = @"phoneNumber";
        if (self.model.phoneNumber.length) {
            phoneNumberModel.content = self.model.phoneNumber;
        }else{
            phoneNumberModel.content = @"-";
        }
        phoneNumberModel.isDetail  = YES;
        phoneNumberModel.placeholder = @"Please fill in phoneNumber";
        [self.autoBeuviewDataArray addObject:phoneNumberModel];
        
        autoBeuAddViewModel *lineModel = [[autoBeuAddViewModel alloc] init];
        lineModel.currentType = autoBeuAddCellLine;
        [self.autoBeuviewDataArray addObject:lineModel];
        
        autoBeuAddViewModel *autoBeuPaintModel = [[autoBeuAddViewModel alloc] init];
        autoBeuPaintModel.currentType = autoBeuAddCellMore;
        autoBeuPaintModel.title = @"Paint";
        if (self.model.autoBeuPaint.note.length) {
            autoBeuPaintModel.content = self.model.autoBeuPaint.note;
        }else{
            autoBeuPaintModel.content = @"-";
        }
        autoBeuPaintModel.isDetail = YES;
        autoBeuPaintModel.isSelect = self.model.autoBeuPaint.isSelect;
        autoBeuPaintModel.placeholder = @"Please fill in remarks";
        autoBeuPaintModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic0 = [[NSMutableDictionary alloc] init];
        [dic0 setObject:@"oxideRemoval" forKey:@"name"];
        [dic0 setObject:[NSNumber numberWithBool:self.model.autoBeuPaint.isOxideRemoval] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic0];
        NSMutableDictionary *dic1 = [[NSMutableDictionary alloc] init];
        [dic1 setObject:@"wax" forKey:@"name"];
        [dic1 setObject:[NSNumber numberWithBool:self.model.autoBeuPaint.isWax] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic1];
        NSMutableDictionary *dic2 = [[NSMutableDictionary alloc] init];
        [dic2 setObject:@"nickProcess" forKey:@"name"];
        [dic2 setObject:[NSNumber numberWithBool:self.model.autoBeuPaint.isNickProcess] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic2];
        NSMutableDictionary *dic3 = [[NSMutableDictionary alloc] init];
        [dic3 setObject:@"orangePeelProcess" forKey:@"name"];
        [dic3 setObject:[NSNumber numberWithBool:self.model.autoBeuPaint.isOrangePeelProcess] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic3];
        NSMutableDictionary *dic4 = [[NSMutableDictionary alloc] init];
        [dic4 setObject:@"lossLightProcess" forKey:@"name"];
        [dic4 setObject:[NSNumber numberWithBool:self.model.autoBeuPaint.isLossLightProcess] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic4];
        NSMutableDictionary *dic5 = [[NSMutableDictionary alloc] init];
        [dic5 setObject:@"sealingGlair" forKey:@"name"];
        [dic5 setObject:[NSNumber numberWithBool:self.model.autoBeuPaint.isSealingGlair] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic5];
        NSMutableDictionary *dic6 = [[NSMutableDictionary alloc] init];
        [dic6 setObject:@"coating" forKey:@"name"];
        [dic6 setObject:[NSNumber numberWithBool:self.model.autoBeuPaint.isCoating] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic6];
        NSMutableDictionary *dic7 = [[NSMutableDictionary alloc] init];
        [dic7 setObject:@"platingCrystal" forKey:@"name"];
        [dic7 setObject:[NSNumber numberWithBool:self.model.autoBeuPaint.isPlatingCrystal] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic7];
        NSMutableDictionary *dic8 = [[NSMutableDictionary alloc] init];
        [dic8 setObject:@"pianoPaintRestoration" forKey:@"name"];
        [dic8 setObject:[NSNumber numberWithBool:self.model.autoBeuPaint.isPianoPaintRestoration] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic8];
        [self.autoBeuviewDataArray addObject:autoBeuPaintModel];
        
        autoBeuAddViewModel *autoBeuInteriorModel = [[autoBeuAddViewModel alloc] init];
        autoBeuInteriorModel.currentType = autoBeuAddCellMore;
        autoBeuInteriorModel.title = @"Interior";
        if (self.model.autoBeuInterior.note.length) {
            autoBeuInteriorModel.content = self.model.autoBeuInterior.note;
        }else{
            autoBeuInteriorModel.content = @"-";
        }
        autoBeuInteriorModel.isDetail = YES;
        autoBeuInteriorModel.isSelect = self.model.autoBeuInterior.isSelect;
        autoBeuInteriorModel.placeholder = @"Please fill in remarks";
        autoBeuInteriorModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic10 = [[NSMutableDictionary alloc] init];
        [dic10 setObject:@"cleaning" forKey:@"name"];
        [dic10 setObject:[NSNumber numberWithBool:self.model.autoBeuInterior.isCleaning] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic10];
        NSMutableDictionary *dic11 = [[NSMutableDictionary alloc] init];
        [dic11 setObject:@"leatherCare" forKey:@"name"];
        [dic11 setObject:[NSNumber numberWithBool:self.model.autoBeuInterior.isLeatherCare] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic11];
        NSMutableDictionary *dic12 = [[NSMutableDictionary alloc] init];
        [dic12 setObject:@"doorPlankCoating" forKey:@"name"];
        [dic12 setObject:[NSNumber numberWithBool:self.model.autoBeuInterior.isDoorPlankCoating] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic12];
        NSMutableDictionary *dic13 = [[NSMutableDictionary alloc] init];
        [dic13 setObject:@"sprayDisinfection" forKey:@"name"];
        [dic13 setObject:[NSNumber numberWithBool:self.model.autoBeuInterior.isSprayDisinfection] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic13];
        NSMutableDictionary *dic14 = [[NSMutableDictionary alloc] init];
        [dic14 setObject:@"sprayDisinfection" forKey:@"name"];
        [dic14 setObject:[NSNumber numberWithBool:self.model.autoBeuInterior.isSprayDisinfection] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic14];
        NSMutableDictionary *dic15 = [[NSMutableDictionary alloc] init];
        [dic15 setObject:@"fabricCoating" forKey:@"name"];
        [dic15 setObject:[NSNumber numberWithBool:self.model.autoBeuInterior.isFabricCoating] forKey:@"switch"];
        [autoBeuInteriorModel.switchTitlesArray addObject:dic15];
        [self.autoBeuviewDataArray addObject:autoBeuInteriorModel];
        
        autoBeuAddViewModel *autoBeuNacelleModel = [[autoBeuAddViewModel alloc] init];
        autoBeuNacelleModel.currentType = autoBeuAddCellMore;
        autoBeuNacelleModel.title = @"Nacelle";
        if (self.model.autoBeuNacelle.note.length) {
            autoBeuNacelleModel.content = self.model.autoBeuNacelle.note;
        }else{
            autoBeuNacelleModel.content = @"-";
        }
        autoBeuNacelleModel.isDetail = YES;
        autoBeuNacelleModel.isSelect = self.model.autoBeuNacelle.isSelect;
        autoBeuNacelleModel.placeholder = @"Please fill in remarks";
        autoBeuNacelleModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic20 = [[NSMutableDictionary alloc] init];
        [dic20 setObject:@"engineRoomClean" forKey:@"name"];
        [dic20 setObject:[NSNumber numberWithBool:self.model.autoBeuNacelle.isEngineRoomClean] forKey:@"switch"];
        [autoBeuNacelleModel.switchTitlesArray addObject:dic20];
        NSMutableDictionary *dic21 = [[NSMutableDictionary alloc] init];
        [dic21 setObject:@"cabinCoating" forKey:@"name"];
        [dic21 setObject:[NSNumber numberWithBool:self.model.autoBeuNacelle.isCabinCoating] forKey:@"switch"];
        [autoBeuNacelleModel.switchTitlesArray addObject:dic21];
        [self.autoBeuviewDataArray addObject:autoBeuNacelleModel];
        
        autoBeuAddViewModel *autoBeuGlassModel = [[autoBeuAddViewModel alloc] init];
        autoBeuGlassModel.currentType = autoBeuAddCellMore;
        autoBeuGlassModel.title = @"Glass";
        if (self.model.autoBeuGlass.note.length) {
            autoBeuGlassModel.content = self.model.autoBeuGlass.note;
        }else{
            autoBeuGlassModel.content = @"-";
        }
        autoBeuGlassModel.isDetail = YES;
        autoBeuGlassModel.isSelect = self.model.autoBeuGlass.isSelect;
        autoBeuGlassModel.placeholder = @"Please fill in remarks";
        autoBeuGlassModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic30 = [[NSMutableDictionary alloc] init];
        [dic30 setObject:@"glassOilFilmRemoval" forKey:@"name"];
        [dic30 setObject:[NSNumber numberWithBool:self.model.autoBeuGlass.isGlassOilFilmRemoval] forKey:@"switch"];
        [autoBeuPaintModel.switchTitlesArray addObject:dic30];
        NSMutableDictionary *dic31 = [[NSMutableDictionary alloc] init];
        [dic31 setObject:@"platingGlassCrystal" forKey:@"name"];
        [dic31 setObject:[NSNumber numberWithBool:self.model.autoBeuGlass.isPlatingGlassCrystal] forKey:@"switch"];
        [autoBeuGlassModel.switchTitlesArray addObject:dic31];
        [self.autoBeuviewDataArray addObject:autoBeuGlassModel];
        
        autoBeuAddViewModel *autoBeuTiresAndHubsModel = [[autoBeuAddViewModel alloc] init];
        autoBeuTiresAndHubsModel.currentType = autoBeuAddCellMore;
        autoBeuTiresAndHubsModel.title = @"TiresAndHubs";
        if (self.model.autoBeuTiresAndHubs.note.length) {
            autoBeuTiresAndHubsModel.content = self.model.autoBeuTiresAndHubs.note;
        }else{
            autoBeuTiresAndHubsModel.content = @"-";
        }
        autoBeuTiresAndHubsModel.isDetail = YES;
        autoBeuTiresAndHubsModel.isSelect = self.model.autoBeuTiresAndHubs.isSelect;
        autoBeuTiresAndHubsModel.placeholder = @"Please fill in remarks";
        autoBeuTiresAndHubsModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic40 = [[NSMutableDictionary alloc] init];
        [dic40 setObject:@"tireCleaningAndCoating" forKey:@"name"];
        [dic40 setObject:[NSNumber numberWithBool:self.model.autoBeuTiresAndHubs.isTireCleaningAndCoating] forKey:@"switch"];
        [autoBeuTiresAndHubsModel.switchTitlesArray addObject:dic40];
        NSMutableDictionary *dic41 = [[NSMutableDictionary alloc] init];
        [dic41 setObject:@"wheelHubCleaningAndCrystalPlating" forKey:@"name"];
        [dic41 setObject:[NSNumber numberWithBool:self.model.autoBeuTiresAndHubs.isWheelHubCleaningAndCrystalPlating] forKey:@"switch"];
        [autoBeuTiresAndHubsModel.switchTitlesArray addObject:dic41];
        [self.autoBeuviewDataArray addObject:autoBeuTiresAndHubsModel];
        
        autoBeuAddViewModel *autoBeuHeadlightModel = [[autoBeuAddViewModel alloc] init];
        autoBeuHeadlightModel.currentType = autoBeuAddCellMore;
        autoBeuHeadlightModel.title = @"Headlight";
        if (self.model.autoBeuHeadlight.note.length) {
            autoBeuHeadlightModel.content = self.model.autoBeuHeadlight.note;
        }else{
            autoBeuHeadlightModel.content = @"-";
        }
        autoBeuHeadlightModel.isDetail = YES;
        autoBeuHeadlightModel.isSelect = self.model.autoBeuHeadlight.isSelect;
        autoBeuHeadlightModel.placeholder = @"Please fill in remarks";
        autoBeuHeadlightModel.switchTitlesArray = [[NSMutableArray alloc] init];
        NSMutableDictionary *dic50 = [[NSMutableDictionary alloc] init];
        [dic50 setObject:@"oxidation" forKey:@"name"];
        [dic50 setObject:[NSNumber numberWithBool:self.model.autoBeuHeadlight.isOxidation] forKey:@"switch"];
        [autoBeuHeadlightModel.switchTitlesArray addObject:dic50];
        NSMutableDictionary *dic51 = [[NSMutableDictionary alloc] init];
        [dic51 setObject:@"renovation" forKey:@"name"];
        [dic51 setObject:[NSNumber numberWithBool:self.model.autoBeuHeadlight.isRenovation] forKey:@"switch"];
        [autoBeuHeadlightModel.switchTitlesArray addObject:dic51];
        [self.autoBeuviewDataArray addObject:autoBeuHeadlightModel];
        
        [self.autoBeumainTable reloadData];
        [self.autoBeusaveButton setTitle:@"Save" forState:UIControlStateNormal];
        self.autoBeusaveButton.hidden = YES;
        [self.autoBeumainTable mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop);
        }];
        [self.autoBeumainTable layoutIfNeeded];
        [self.view layoutSubviews];
    }
}
#pragma mark - 添加或保存
- (void)autoBeusave{
    autoBeuAddViewModel *nameModel = self.autoBeuviewDataArray[0];
    if (!nameModel.content.length) {
        [MBProgressHUD autoBeushowReminderText:@"Please fill in name"];
    }
    self.model.name = nameModel.content;
    autoBeuAddViewModel *carmodelModel = self.autoBeuviewDataArray[1];
    if (!carmodelModel.content.length) {
        [MBProgressHUD autoBeushowReminderText:@"Please fill in carModel"];
    }
    self.model.carModel = carmodelModel.content;
    autoBeuAddViewModel *licensePlateModel = self.autoBeuviewDataArray[2];
    if (!licensePlateModel.content.length) {
        [MBProgressHUD autoBeushowReminderText:@"Please fill in licensePlate"];
    }
    self.model.licensePlate = licensePlateModel.content;
    autoBeuAddViewModel *phoneNumberModel = self.autoBeuviewDataArray[3];
    if (phoneNumberModel.content.length) {
        self.model.phoneNumber = phoneNumberModel.content;
    }
    
    autoBeuAddViewModel *autoBeuPaintModel = self.autoBeuviewDataArray[5];
    if (autoBeuPaintModel.isSelect) {
        self.model.autoBeuPaint.isSelect = autoBeuPaintModel.isSelect;
        self.model.autoBeuPaint.note = autoBeuPaintModel.content;
        for (int i = 0; i < autoBeuPaintModel.switchTitlesArray.count; i++) {
            NSDictionary *dic = autoBeuPaintModel.switchTitlesArray[i];
            NSString *name = dic[@"name"];
            if ([name isEqualToString:@"oxideRemoval"]) {
                self.model.autoBeuPaint.isOxideRemoval = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"wax"]){
                self.model.autoBeuPaint.isWax = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"nickProcess"]){
                self.model.autoBeuPaint.isNickProcess = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"orangePeelProcess"]){
                self.model.autoBeuPaint.isOrangePeelProcess = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"lossLightProcess"]){
                self.model.autoBeuPaint.isLossLightProcess = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"sealingGlair"]){
                self.model.autoBeuPaint.isSealingGlair = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"coating"]){
                self.model.autoBeuPaint.isCoating = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"platingCrystal"]){
                self.model.autoBeuPaint.isPlatingCrystal = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"pianoPaintRestoration"]){
                self.model.autoBeuPaint.isPianoPaintRestoration = [dic[@"switch"] boolValue];
            }
        }
    }
    
    autoBeuAddViewModel *autoBeuInteriorModel = self.autoBeuviewDataArray[6];
    if (autoBeuInteriorModel.isSelect) {
        self.model.autoBeuInterior.isSelect = autoBeuInteriorModel.isSelect;
        self.model.autoBeuInterior.note = autoBeuInteriorModel.content;
        for (int i = 0; i < autoBeuInteriorModel.switchTitlesArray.count; i++) {
            NSDictionary *dic = autoBeuInteriorModel.switchTitlesArray[i];
            NSString *name = dic[@"name"];
            if ([name isEqualToString:@"cleaning"]) {
                self.model.autoBeuInterior.isCleaning = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"leatherCare"]){
                self.model.autoBeuInterior.isLeatherCare = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"doorPlankCoating"]){
                self.model.autoBeuInterior.isDoorPlankCoating = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"sprayDisinfection"]){
                self.model.autoBeuInterior.isSprayDisinfection = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"fabricCoating"]){
                self.model.autoBeuInterior.isFabricCoating = [dic[@"switch"] boolValue];
            }
        }
    }
    autoBeuAddViewModel *autoBeuNacelleModel = self.autoBeuviewDataArray[7];
    if (autoBeuNacelleModel.isSelect) {
        self.model.autoBeuNacelle.isSelect = autoBeuNacelleModel.isSelect;
        self.model.autoBeuNacelle.note = autoBeuNacelleModel.content;
        for (int i = 0; i < autoBeuNacelleModel.switchTitlesArray.count; i++) {
            NSDictionary *dic = autoBeuNacelleModel.switchTitlesArray[i];
            NSString *name = dic[@"name"];
            if ([name isEqualToString:@"engineRoomClean"]) {
                self.model.autoBeuNacelle.isEngineRoomClean = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"cabinCoating"]){
                self.model.autoBeuNacelle.isCabinCoating = [dic[@"switch"] boolValue];
            }
        }
    }
    autoBeuAddViewModel *autoBeuGlassModel = self.autoBeuviewDataArray[8];
    if (autoBeuGlassModel.isSelect) {
        self.model.autoBeuGlass.isSelect = autoBeuGlassModel.isSelect;
        self.model.autoBeuNacelle.note = autoBeuGlassModel.content;
        for (int i = 0; i < autoBeuGlassModel.switchTitlesArray.count; i++) {
            NSDictionary *dic = autoBeuGlassModel.switchTitlesArray[i];
            NSString *name = dic[@"name"];
            if ([name isEqualToString:@"glassOilFilmRemoval"]) {
                self.model.autoBeuGlass.isGlassOilFilmRemoval = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"platingGlassCrystal"]){
                self.model.autoBeuGlass.isPlatingGlassCrystal = [dic[@"switch"] boolValue];
            }
        }
    }
    autoBeuAddViewModel *autoBeuTiresAndHubsModel = self.autoBeuviewDataArray[9];
    if (autoBeuTiresAndHubsModel.isSelect) {
        self.model.autoBeuTiresAndHubs.isSelect = autoBeuTiresAndHubsModel.isSelect;
        self.model.autoBeuTiresAndHubs.note = autoBeuTiresAndHubsModel.content;
        for (int i = 0; i < autoBeuTiresAndHubsModel.switchTitlesArray.count; i++) {
            NSDictionary *dic = autoBeuTiresAndHubsModel.switchTitlesArray[i];
            NSString *name = dic[@"name"];
            if ([name isEqualToString:@"tireCleaningAndCoating"]) {
                self.model.autoBeuTiresAndHubs.isTireCleaningAndCoating = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"wheelHubCleaningAndCrystalPlating"]){
                self.model.autoBeuTiresAndHubs.isWheelHubCleaningAndCrystalPlating = [dic[@"switch"] boolValue];
            }
        }
    }
    autoBeuAddViewModel *autoBeuHeadlightModel = self.autoBeuviewDataArray[10];
    if (autoBeuHeadlightModel.isSelect) {
        self.model.autoBeuHeadlight.isSelect = autoBeuHeadlightModel.isSelect;
        self.model.autoBeuHeadlight.note = autoBeuHeadlightModel.content;
        for (int i = 0; i < autoBeuHeadlightModel.switchTitlesArray.count; i++) {
            NSDictionary *dic = autoBeuHeadlightModel.switchTitlesArray[i];
            NSString *name = dic[@"name"];
            if ([name isEqualToString:@"oxidation"]) {
                self.model.autoBeuHeadlight.isOxidation = [dic[@"switch"] boolValue];
            }else if ([name isEqualToString:@"renovation"]){
                self.model.autoBeuHeadlight.isRenovation = [dic[@"switch"] boolValue];
            }
        }
    }
    NSDate *nowDate = [[NSDate alloc] init];
    NSString *dateString = [autoBeuUIUtilities autoBeuformattedTimeStringWithDate:nowDate format:@"yyyy-MM-dd HH:mm"];
    self.model.date = dateString;
    NSString *documentPath = [autoBeuHBTool getDocumentPath:@"autoBeuData.plist"];
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"autoBeuData" ofType:@"plist"];
    NSFileManager *manager = [NSFileManager defaultManager];
    NSError *error;
    if ([manager fileExistsAtPath:documentPath]) {
        NSLog(@"file is exists");
        
    }else{
        if ([manager copyItemAtPath:plistPath toPath:documentPath error:&error]) {
            NSLog(@"file is not exists, copy success!");
            
        }else{
            NSLog(@"error = %@",error);
            return;
        }
    }
    NSMutableArray *documentData = [[NSMutableArray alloc] initWithContentsOfFile:documentPath];
    NSDictionary *dic = (NSDictionary *)[self.model yy_modelToJSONObject];
    NSDictionary *dict = @{@"id":self.model.name,@"data":dic};
    for (NSDictionary *dictd in documentData) {
        if ([dictd[@"id"] isEqualToString:self.model.name]) {
            [documentData removeObject:dictd];
        }
    }
    [documentData addObject:dict];
    [documentData writeToFile:documentPath atomically:YES];
    [MBProgressHUD autoBeushowReminderText:@"Save success!"];
    if (self.currentType == autoBeuAddViewControllerTypeAdd) {
    self.navigationController.tabBarController.selectedIndex = 0;
    }else if (self.currentType == autoBeuAddViewControllerTypeEditAgain){
        [self.navigationController popViewControllerAnimated:YES];
    }
}
#pragma mark - 再次编辑
- (void)autoBeueditor{
    self.currentType = autoBeuAddViewControllerTypeEditAgain;
    self.title = @"Edit";
    for (int i = 0; i < self.autoBeuviewDataArray.count; i++) {
        autoBeuAddViewModel *vModel = self.autoBeuviewDataArray[i];
        if (vModel.isDetail) {
            vModel.isDetail = NO;
        }
        if ([vModel.content isEqualToString:@"-"]) {
            vModel.content = @"";
        }
    }
    self.autoBeueditButton.hidden = YES;
    self.autoBeusaveButton.hidden = NO;
    [self.autoBeumainTable reloadData];
    [self.autoBeumainTable mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-64);
    }];
    [self.autoBeumainTable layoutIfNeeded];
    [self.view layoutSubviews];
}
#pragma mark - UIScrollViewDelegate
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}
- (void)autoBeucloseKeyboard:(UITapGestureRecognizer *)recognizer{
    [self.view endEditing:YES];
}
#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.autoBeuviewDataArray.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    autoBeuAddViewModel *vModel = self.autoBeuviewDataArray[indexPath.row];
    if (vModel.currentType == autoBeuAddCellLine) {
        return 10;
    }else{
        return UITableViewAutomaticDimension;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    autoBeuAddViewModel *vModel = self.autoBeuviewDataArray[indexPath.row];
    if (vModel.currentType == autoBeuAddCellDefault) {
        NSString *KMyCellID = @"autoBeuEditorTableViewCell";
        NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
        autoBeuEditorTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell) {
            cell = [[autoBeuEditorTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        cell.model = vModel;
        __weak typeof(self) weakSelf = self;
        cell.editblock = ^(autoBeuEditorTableViewCell * _Nonnull cell) {
            [weakSelf.autoBeumainTable beginUpdates];
            [weakSelf.autoBeumainTable endUpdates];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (vModel.currentType == autoBeuAddCellSingle) {
        NSString *KMyCellID = @"autoBeuAddSingleTableViewCell";
        NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
        autoBeuAddSingleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell) {
            cell = [[autoBeuAddSingleTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        cell.model = vModel;
        __weak typeof(self) weakSelf = self;
        cell.autoBeuAddSingleblock = ^(autoBeuAddSingleTableViewCell * _Nonnull cell) {
            [weakSelf.autoBeumainTable beginUpdates];
            [weakSelf.autoBeumainTable endUpdates];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else if (vModel.currentType == autoBeuAddCellMore){
        NSString *KMyCellID = @"autoBeuAddMoreTableViewCell";
        NSString *cellID = [NSString stringWithFormat:@"%@%zd",KMyCellID, indexPath.row];
        autoBeuAddMoreTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (!cell) {
            cell = [[autoBeuAddMoreTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
        }
        cell.model = vModel;
        __weak typeof(self) weakSelf = self;
        cell.autoBeuAddMoreblock = ^(autoBeuAddMoreTableViewCell * _Nonnull cell) {
            [weakSelf.autoBeumainTable beginUpdates];
            [weakSelf.autoBeumainTable endUpdates];
        };
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }else{
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
        cell.backgroundColor = auto4sH_Color(242, 242, 242, 1);
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
    }
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
#pragma mark - 属性懒加载
- (autoBeuDataModel *)model{
    if (!_model) {
        _model = [[autoBeuDataModel alloc] init];
        _model.autoBeuPaint = [[autoBeuPaintModel alloc] init];
        _model.autoBeuInterior = [[autoBeuInteriorModel alloc] init];
        _model.autoBeuNacelle = [[autoBeuNacelleModel alloc] init];
        _model.autoBeuGlass = [[autoBeuGlassModel alloc] init];
        _model.autoBeuTiresAndHubs = [[autoBeuTiresAndHubsModel alloc] init];
        _model.autoBeuHeadlight = [[autoBeuHeadlightModel alloc] init];
    }
    return _model;
}
- (UITableView *)autoBeumainTable{
    if (!_autoBeumainTable) {
        _autoBeumainTable = [[UITableView alloc] init];
        _autoBeumainTable.rowHeight = UITableViewAutomaticDimension;
        _autoBeumainTable.estimatedRowHeight = 55.0f;
        _autoBeumainTable.dataSource = self;
        _autoBeumainTable.delegate = self;
        _autoBeumainTable.separatorStyle = UITableViewCellSeparatorStyleNone;
        [_autoBeumainTable registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
        UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(autoBeucloseKeyboard:)];
        singleTapGesture.numberOfTapsRequired = 1;
        singleTapGesture.cancelsTouchesInView = NO;
        [_autoBeumainTable addGestureRecognizer:singleTapGesture];
        [self.view addGestureRecognizer:singleTapGesture];
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(autoBeucloseKeyboard:)];
        [self.view addGestureRecognizer:panGesture];
        [self.view addSubview:self.autoBeusaveButton];
        [self.autoBeusaveButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view).offset(16);
            make.trailing.equalTo(self.view).offset(-16);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-10);
            make.height.mas_equalTo(44);
        }];
        [self.view addSubview:_autoBeumainTable];
        [_autoBeumainTable mas_makeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.view);
            make.trailing.equalTo(self.view);
            make.top.equalTo(self.mas_topLayoutGuideBottom);
            make.bottom.equalTo(self.mas_bottomLayoutGuideTop).offset(-64);
        }];
    }
    return _autoBeumainTable;
}
- (UIButton *)autoBeusaveButton{
    if (!_autoBeusaveButton) {
        _autoBeusaveButton = [[UIButton alloc] init];
        _autoBeusaveButton.backgroundColor = [UIColor redColor];
        _autoBeusaveButton.layer.cornerRadius = 2;
        _autoBeusaveButton.layer.masksToBounds = YES;
        _autoBeusaveButton.layer.borderColor = auto4sH_Color(100, 141, 225, 1).CGColor;
        _autoBeusaveButton.layer.borderWidth = 0.5f;
        [_autoBeusaveButton setTitle:@"COMPLETE" forState:UIControlStateNormal];
        [_autoBeusaveButton addTarget:self action:@selector(autoBeusave) forControlEvents:UIControlEventTouchUpInside];
        [_autoBeusaveButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_autoBeusaveButton.titleLabel setFont:[UIFont systemFontOfSize:15]];
    }
    return _autoBeusaveButton;
}
- (UIButton *)autoBeueditButton{
    if (!_autoBeueditButton) {
        _autoBeueditButton = [[UIButton alloc] init];
        [_autoBeueditButton setTitle:@"Editor" forState:UIControlStateNormal];
        [_autoBeueditButton setTitleColor:[UIColor colorWithRed:19/255.0 green:29/255.0 blue:50/255.0 alpha:1/1.0] forState:UIControlStateNormal];
        [_autoBeueditButton.titleLabel setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:17]];
        [_autoBeueditButton addTarget:self action:@selector(autoBeueditor) forControlEvents:UIControlEventTouchUpInside];
        [_autoBeueditButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.width.mas_equalTo(50);
            make.height.mas_equalTo(22);
        }];
    }
    return _autoBeueditButton;
}
- (NSMutableArray *)autoBeuviewDataArray{
    if (!_autoBeuviewDataArray) {
        _autoBeuviewDataArray = [[NSMutableArray alloc] init];
    }
    return _autoBeuviewDataArray;
}
@end
