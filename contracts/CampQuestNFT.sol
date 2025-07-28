// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CampQuestNFT is ERC1155, Ownable {
    uint256 public constant QUEST = 0;

    constructor() ERC1155("https://gateway.pinata.cloud/ipfs/Qm.../{id}.json") {}

    function mint(address account, uint256 amount) public {
        _mint(account, QUEST, amount, "");
    }
}
