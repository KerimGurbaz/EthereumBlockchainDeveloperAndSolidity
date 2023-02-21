//SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

abstract contract ERC20{
    function transferFrom(address _from, address _to, uint256 _value) public virtual returns( bool success);
    function decimals() public virtual view returns(int8);
}



contract TokenSale { 
    uint public tokenPriceInWei = 1 ether;

    ERC20 public token ;
    address public tokenOwner;

    constructor(address _token){

        tokenOwner = msg.sender;
        token = ERC20(_token);
    }
    
    
    function purcaseACoffe() public payable{
        require(msg.value >= tokenPriceInWei, "Not enouhg money sent");
        uint tokenToTransfer =msg.value / tokenPriceInWei;
        uint remaninder = msg.value- tokenToTransfer * tokenPriceInWei;
        token.transferFrom(tokenOwner, msg.sender, tokenToTransfer * 10 ** token.decimals());
        payable(msg.sender).transfer(remaninder); 
    }

}
