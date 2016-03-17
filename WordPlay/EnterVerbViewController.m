//
//  EnterVerbViewController.m
//  WordPlay
//
//  Created by Dylan Bruschi on 3/14/16.
//  Copyright © 2016 Dylan Bruschi. All rights reserved.
//

#import "EnterVerbViewController.h"
#import "EnterAdverbViewController.h"

@interface EnterVerbViewController ()
@property (weak, nonatomic) IBOutlet UITextField *verbTextField;

@end

@implementation EnterVerbViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton *) sender {
    EnterAdverbViewController *destination = segue.destinationViewController;
    destination.verb = self.verbTextField.text;
    destination.name = self.name;
    destination.adjective = self.adjective;
}

-(BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    if ([self.verbTextField.text  isEqual: @""]) {
        return NO;
    }
    else {
        return YES;
    }
    
}

@end
