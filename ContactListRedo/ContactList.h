//
//  ContactList.h
//  ContactListRedo
//
//  Created by naomi schettini on 2016-09-06.
//  Copyright © 2016 naomi schettini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"


@interface ContactList : NSObject

@property NSMutableArray *listOfContacts;

- (void)addContact:(Contact*)contact;

@end
