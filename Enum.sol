// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Enum {
    enum MyEnum {
        Allow,
        Deny,
        Wait
    }

    MyEnum public m1;
    string public permission = "No Status";

    function checkPermission() public {
        if (m1 == MyEnum.Allow) {
            permission = "Permission Granted";
        } else if (m1 == MyEnum.Deny){
            permission = "Permission Deny";
        } else if(m1 == MyEnum.Wait){
            permission = "Permission Pending";
        }
    }

    function pendingPermission() public {
        m1 = MyEnum.Wait;
    }

    function denyPermission() public {
        m1 = MyEnum.Deny;
    }
    function allowPermission() public {
        m1 = MyEnum.Allow;
    }
}
