#import "NIKDate.h"
#import "NIKTag.h"

@implementation NIKTag

@synthesize _id = __id;
@synthesize name = _name;
- (id) _id: (NSNumber*) _id
       name: (NSString*) name
       {
          __id = _id;
          _name = name;
          return self;
       }

- (id) initWithValues: (NSDictionary*)dict
{
    /* isContainer: , baseType: NSNumber, complexType:  */
    __id = [dict objectForKey:@"id"];
    /* isContainer: , baseType: NSString, complexType:  */
    _name = [dict objectForKey:@"name"];
    return self;
}

-(NSDictionary*) asDictionary {
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    if(__id != nil) [dict setObject:__id forKey:@"id"];
    if(_name != nil) [dict setObject:_name forKey:@"name"];
    NSDictionary* output = [dict copy];
    return output;
}

@end

