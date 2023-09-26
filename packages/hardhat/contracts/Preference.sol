// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract Preference  {
 
    address primary;
    struct User{
        address[] secondary;
        string chainPreference;
        string tokenPreference;
    }
    mapping(address => User) public users;
    event UserRegistered(address indexed userAddress);
     function registerUser(
        address primary
        address[] memory _secondaryAddresses,
        string memory _chainPreference,
        string memory _tokenPreference
    ) public {
        users[msg.sender] = User({
            primaryAddress: _primaryAddress,
            secondaryAddresses: _secondaryAddresses,
            chainPreference: _chainPreference,
            tokenPreference: _tokenPreference
        });

        emit UserRegistered(msg.sender);
    }

    function getUserPreferences(address _userAddress)
        public
        view
        returns (
            address primaryAddress,
            address[] memory secondaryAddresses,
            string memory chainPreference,
            string memory tokenPreference
        )
    {
        User storage user = users[_userAddress];
        return (
            user.primaryAddress,
            user.secondaryAddresses,
            user.chainPreference,
            user.tokenPreference
        );
    }

}