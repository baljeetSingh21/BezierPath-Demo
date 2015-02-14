//
//  ViewController.m
//  demo
//
//  Created by Vicky Mathneja on 06/02/15.
//  Copyright (c) 2015 LPU. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view1.style=checkMarkStyle;
    self.view2.style=ErrorMarkStyle;
    self.view3.style=INFOMARK;
    self.view4.style=NOTICEMARK;
    self.view5.style=EDITMARK;
    self.view6.style=WARNINGMARK;

    

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
