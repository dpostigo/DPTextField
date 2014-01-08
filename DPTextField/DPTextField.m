//
// Created by Dani Postigo on 1/8/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "DPTextField.h"

@implementation DPTextField

@synthesize textFieldDelegate;
@synthesize previousTextField;

- (id) init {
    self = [super init];
    if (self) {
        super.delegate = self;

    }

    return self;
}

//
//- (void) setDelegate: (id <UITextFieldDelegate>) delegate {
//    textFieldDelegate = delegate;
//}




#pragma mark UITextFieldDelegate

- (BOOL) textFieldShouldBeginEditing: (UITextField *) textField1 {
    BOOL ret = YES;

    if (previousTextField) {
        [previousTextField resignFirstResponder];
    }
    if (beginValidationBlock) {
        ret = beginValidationBlock(self);
    }
    return ret;
}


- (void) textFieldDidEndEditing: (UITextField *) textField1 {
    if (completionBlock) {
        completionBlock(self);
    }
}

- (BOOL) textFieldShouldReturn: (UITextField *) textField1 {
    BOOL ret = YES;
    if (returnValidationBlock) {
        ret = returnValidationBlock(self);
    }
    return ret;
}

@end