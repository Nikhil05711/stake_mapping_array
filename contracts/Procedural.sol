//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

contract Courses {
    struct Instructor {
        uint256 age;
        string fName;
        string lName;
    }

    mapping(address => Instructor) instructors;
    address[] public instructorAccts;

    function setInstructor(
        address _address,
        uint256 _age,
        string memory _fName,
        string memory _lName
    ) public returns (uint256) {
        //var instructor = instructors[_address];

        instructors[_address].age = _age;
        instructors[_address].fName = _fName;
        instructors[_address].lName = _lName;

        //  instructorAccts.push(_address) -1;
        instructorAccts.push(_address);
        uint256 value = instructorAccts.length - 1;
        return value;
    }

    function getInstructors() public view returns (address[] memory) {
        return instructorAccts;
    }

    function getInstructor(address _address)
        public
        view
        returns (
            uint256,
            string memory,
            string memory
        )
    {
        return (
            instructors[_address].age,
            instructors[_address].fName,
            instructors[_address].lName
        );
    }

    function countInstructors() public view returns (uint256) {
        return instructorAccts.length;
    }
}
