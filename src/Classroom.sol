// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Classroom {
    struct Student {
        uint256 id;
        string name;
        uint256 age;
        bool present;
    }

    Student[] public students;

    event StudentAdded(uint256 studentId, string name, uint256 age);
    event AttendanceUpdated(uint256 studentId, bool present);

    function addStudent(string memory _name, uint256 _age) public {
        uint256 id = students.length;
        students.push(Student(id, _name, _age, false));

        emit StudentAdded(id, _name, _age);
    }


    function updateAttendance(uint256 _studentId, bool _present) public {
        require(_studentId < students.length, "Student does not exist");

        students[_studentId].present = _present;

        emit AttendanceUpdated(_studentId, _present);
    }

    function getTotalStudents() public view returns (uint256) {
        return students.length;
    }

}
