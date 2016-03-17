//
//  EnterNameViewController.m
//  WordPlay
//
//  Created by Dylan Bruschi on 3/14/16.
//  Copyright © 2016 Dylan Bruschi. All rights reserved.
//

#import "EnterNameViewController.h"
#import "EnterAdjectiveViewController.h"

@interface EnterNameViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation EnterNameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *) sender {
        EnterAdjectiveViewController *destination = segue.destinationViewController;
        destination.name = self.nameTextField.text;        
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.nameTextField.text  isEqual: @""]) {
         return NO;
    }
    else {
        return YES;
    }
   
}

@end
