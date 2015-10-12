//
//  ViewController.m
//  cposc-ios
//
//  Created by Steve High on 10/11/15.
//  Copyright © 2015 Steve High. All rights reserved.
//

#import "ViewController.h"
#import "GMP/GMP.h"
#import "cposc-api.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //  set up the page view
    GoGMPSetParam(kGMPDocumentHostName, @"cposc.org");
    GoGMPSetParam(kGMPDocumentPage, @"/home");
    GoGMPSetParam(kGMPDocumentTitle, @"App Homepage");
    GoGMPPageView();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fooTapped:(id)sender {
    GoGMPSetParam(kGMPEventCategory, @"form-control");
    GoGMPSetParam(kGMPEventAction, @"button-tap");
    GoGMPSetParam(kGMPEventLabel, @"foo");
    GoGMPEvent();
}

- (IBAction)barTapped:(id)sender {
    GoGMPSetParam(kGMPEventCategory, @"form-control");
    GoGMPSetParam(kGMPEventAction, @"button-tap");
    GoGMPSetParam(kGMPEventLabel, @"bar");
    GoGMPEvent();
}

- (IBAction)bazTapped:(id)sender {
    GoGMPSetParam(kGMPEventCategory, @"form-control");
    GoGMPSetParam(kGMPEventAction, @"button-tap");
    GoGMPSetParam(kGMPEventLabel, @"baz");
    GoGMPEvent();
}
@end
