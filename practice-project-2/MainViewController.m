//
//  MainViewController.m
//  practice-project-2
//
//  Created by ANUPRIYA AGRAWAL on 6/24/14.
//  Copyright (c) 2014 IshanBhalla. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;
- (IBAction)onBtnUp:(id)sender;
- (IBAction)onBtnRight:(id)sender;
- (IBAction)onBtnLeft:(id)sender;
- (IBAction)onBtnDown:(id)sender;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.containerView.backgroundColor = [UIColor orangeColor];
    self.containerView.layer.shadowColor = [UIColor grayColor].CGColor;
    self.containerView.layer.shadowOpacity = 1;
    self.containerView.layer.shadowOffset = CGSizeMake(1,2);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onBtnUp:(id)sender {
    CGRect frame = self.containerView.frame;
    frame.origin.y -= 40;
    [UIView animateWithDuration:0.5 animations:^{
        self.containerView.frame = frame;
    }];
    
    
}

- (IBAction)onBtnRight:(id)sender {
    CGRect frame = self.containerView.frame;
    frame.origin.x += 40;
    [UIView animateWithDuration:0.5 animations:^{
        self.containerView.frame = frame;
    }];
}

- (IBAction)onBtnLeft:(id)sender {
    CGRect frame = self.containerView.frame;
    frame.origin.x -= 40;
    [UIView animateWithDuration:0.5 animations:^{
        self.containerView.frame = frame;
    }];
}

- (IBAction)onBtnDown:(id)sender {
    CGRect frame = self.containerView.frame;
    frame.origin.y += 40;
    [UIView animateWithDuration:0.5 animations:^{
        self.containerView.frame = frame;
    }];
}
@end
