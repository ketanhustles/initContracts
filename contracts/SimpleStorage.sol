//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;  //hello all

contract SimpleStorage{
    //DATATYPES
    //boolean, uint, int, address, bytes

    bool hasFavouriteNumber = true;
    uint favouriteNumber = 123;
    string favourite = "One";
    int favouriteInt= 256;
    address myaddress = 0x1f2a48Bce9Ceeb39e676facE36E34bDA7033e95F;
    bytes32 fav = "cat";
    
    uint256 public favnum;  //This gets initialised to 0.
    People public person = People({favnum:2, name:"Ketan"});
    //mapping

    mapping (string => uint256) public nameToFavnum;

    //Struct
    struct People{
        uint256 favnum;
        string name;
    }  
    
    //array
    //uint256[] public num;

    People[] public people;

    function store (uint256 _favnum) public {
        favnum = _favnum;
    }
    // contrat address = 0xd9145CCE52D386f254917e481eB44e9943F39138

    //view,pure

    function retrieve() public view returns(uint256){
        return favnum;
    }

    function add() public pure returns (uint256){
        return(1+1);

    }

    function addPerson (string memory _name, uint256 _favnum) public {
        people.push(People(_favnum, _name));
        nameToFavnum[_name]= _favnum;
    }

    



}

