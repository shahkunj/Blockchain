
Transaction Hash :- 0x90a44cbb976e51d6f80094ed6c7583fc3edf666d8db6b68da390a98f06dd4c0d

Address From : - 0x2e64bec57a5103b08e080c8814a3deaaec5f1dc4

Ropsten Transaction Link :-
https://ropsten.etherscan.io/tx/0x90a44cbb976e51d6f80094ed6c7583fc3edf666d8db6b68da390a98f06dd4c0d



pragma solidity >=0.4.17 <0.7.0;

contract Report
{
    string name;
    int rollno;
    int batch;
    int mark1;int mark2; int mark3;int mark4;int result;
    string status;
    
   

    function Report(string newname,int newroll,int newbatch,int newmark1,int newmark2,int newmark3,int newmark4) public
    {
        name = newname;
        rollno = newroll;
        batch = newbatch;
        mark1=newmark1;
        mark2=newmark2;
        mark3=newmark3;
        mark4=newmark4;
        
         result = mark1 + mark2 + mark3 + mark4;
         result = result * 100/400;
         
         if( result < 33)
        {
            status = "FAIL";
        }
        else if(result >= 33)
        {
            status = "PASS";
        }
         
        
    }
    
    function getDetails() public view returns(string Student_Name,int Roll_No,int Batch,int mark_of_subject_1,int mark_of_subject_2,int mark_of_subject_3,int mark_of_subject_4,int Percentage,string Status)
    {
        
        
        return(name,rollno,batch,mark1,mark2,mark3,mark4,result,status);
        
        
    }
    
}
