// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.3;

contract LabExam {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function.");
        _;
    }

    string public name;
    // Name
    function setName(string calldata _name) external{
        name=_name;
    }

    uint256 public prelimGrade;
    // Prelim Grade
    function setPrelimGrade(uint256 _prelimGrade) external onlyOwner  {
        require(_prelimGrade<101, "Grade should be within 0-100");
        prelimGrade = _prelimGrade;
    }

    uint256 public midtermGrade;
    // Midterm Grade
    function setMidtermGrade(uint256 _midtermGrade) external onlyOwner  {
        require(_midtermGrade<101, "Grade should be within 0-100");
        midtermGrade = _midtermGrade;
    }

    uint256 public finalGrade;
    // Final Grade
    function setFinalGrade(uint256 _finalGrade) external onlyOwner  {
        require(_finalGrade<101, "Grade should be within 0-100");
        finalGrade = _finalGrade;
    }

    enum GradeStatus {Fail, Pass}
    GradeStatus public gradeStatus;
    // Calculate and Set grade status
    function calculateGrade() external onlyOwner{
        require(prelimGrade != 0 && midtermGrade != 0 && finalGrade != 0, "Grades not set");
        uint256 average = (finalGrade+midtermGrade+prelimGrade)/3;
        if (average < 75){
            gradeStatus=GradeStatus.Fail;
        } else {
            gradeStatus=GradeStatus.Pass;
        }
    }
    
}