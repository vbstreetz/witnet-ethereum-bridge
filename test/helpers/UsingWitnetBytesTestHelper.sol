pragma solidity ^0.5.0;

import "../../contracts/UsingWitnetBytes.sol";


/**
 * @title Test Helper for the UsingWitnetBytes contract
 * @dev The aim of this contract is:
 * 1. Raise the visibility modifier of UsingWitnetBytes contract functions for testing purposes
 * @author Witnet Foundation
 */
contract UsingWitnetBytesTestHelper is UsingWitnetBytes {

  constructor (address _wbiAddress) UsingWitnetBytes(_wbiAddress) public {}

  function _witnetPostDataRequest(bytes memory _dr, uint256 _tallyReward) public payable returns(uint256 id) {
    return witnetPostRequest(_dr, _tallyReward);
  }

  function _witnetUpgradeDataRequest(uint256 _id, uint256 _tallyReward) public payable {
    witnetUpgradeRequest(_id, _tallyReward);
  }

  function _witnetReadResult (uint256 _id) public view returns(bytes memory) {
    return witnetReadResult(_id);
  }
}
