### Generated by rprotoc. DO NOT EDIT!
### <proto file: test/proto/addressbook.proto>
# package tutorial;
# 
# message Person {
#   required string name = 1;
#   required int32 id = 2;
#   optional string email = 3;
# 
#   enum PhoneType {
#     MOBILE = 0;
#     HOME = 1;
#     WORK = 2;
#   }
# 
#   message PhoneNumber {
#     required string number = 1;
#     optional PhoneType type = 2 [default = HOME];
#   }
# 
#   repeated PhoneNumber phone = 4;
#   optional uint32 age = 5 [default = 20];
# 
#   extensions 100 to 200;
# }
# 
# /*
# extend Person {
#   optional int32 age = 100;
# }
# */
# 
# message AddressBook {
#   repeated Person person = 1;
# }

require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/extend'

module Tutorial
  class Person < ::Protobuf::Message
    defined_in __FILE__
    required :string, :name, 1
    required :int32, :id, 2
    optional :string, :email, 3
    class PhoneType < ::Protobuf::Enum
      defined_in __FILE__
      define :MOBILE, 0
      define :HOME, 1
      define :WORK, 2
    end
    class PhoneNumber < ::Protobuf::Message
      defined_in __FILE__
      required :string, :number, 1
      optional :PhoneType, :type, 2, :default => :HOME
    end
    repeated :PhoneNumber, :phone, 4
    optional :uint32, :age, 5, :default => 20
    extensions 100..200
  end
  class AddressBook < ::Protobuf::Message
    defined_in __FILE__
    repeated :Person, :person, 1
  end
end