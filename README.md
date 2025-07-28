
---

## 🧱 Smart Contract

The NFT minting contract is written in Solidity (`^0.8.20`) and deployed using the Camp SDK.  
It uses the [ERC1155](https://docs.openzeppelin.com/contracts/4.x/api/token/erc1155) standard.

```solidity
contract CampQuestNFT is ERC1155, Ownable {
    uint256 public constant QUEST = 0;

    constructor() ERC1155("https://campquests.example/metadata/{id}.json") {}

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, QUEST, amount, "");
    }
}
