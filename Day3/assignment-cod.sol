pragma solidity >=0.4.22 <0.7.0;

contract land{
    string  public owner_name;
    string  public  area;
    
    function land_1(string memory new_owner , string memory new_area) public{
        owner_name = new_owner;
        area = new_area;
    }
    
    function details(string memory new_owner , string memory new_area) public{
        owner_name = new_owner;
        area = new_area;
    }
    
    function get_details() public view returns(string memory,string memory) {
        return(owner_name,area);
    }
}
