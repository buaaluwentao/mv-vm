//
//  TestUIViewController.m
//  ibeacon
//
//  Created by luwentao on 2018/10/30.
//  Copyright © 2018年 cmb. All rights reserved.
//

#import "TestUIViewController.h"
#import "BulletWindowView.h"

@interface TestUIViewController ()

@property BulletWindowView* tfSheetView;

@end

@implementation TestUIViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadBtnView];
    
}


- (void)loadBtnView
{
    UIButton *_loginButton = [[UIButton alloc]initWithFrame:CGRectMake(40, 220, DEVICEWIDTH - 40*2, 40)];
    [_loginButton setTitle:@"加载" forState:UIControlStateNormal];
    _loginButton.backgroundColor = [UIColor grayColor];
    [_loginButton addTarget:self action:@selector(loadClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_loginButton];
}

- (void)loadClicked
{
    //[_sheetView showInView:self.view];
    self.tfSheetView = [[BulletWindowView alloc]init];
    [self.tfSheetView showInView:self.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
