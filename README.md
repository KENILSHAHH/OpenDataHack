# 🏗 MyNFTMyChain
Its really painful to let users send assets and NFTS/POAP's to your unwanted/unpreferred address as well as network. How about a wallet that lets you set your preferences (your asset choice (USDT/USDC/...) and your chain on which you would like to recieve your assets and your secondary addressess. Along with this the users will have support to send the assets and NFTs from their desired change and we are using chainlink ccip protocol to bridge the assets towards the reciever's desired chain.  
Its really hard to manage all the NFTs, SBTs, POAPs which you receive it on several chains and several address. You would have remember every time when someone sends you an NFT and note down the chain as well as the address on which you received it

Well MyNFTMyChain solves this issue where in the Community/DAOs/anyone can send the NFTs to the other users on their preferred chain as well as preferred addresses.

How are we doing it?

We have four main contracts to interact with.
1) Preference.sol -> This saves the user's preference on chain deployed on FVM Calibration testnet 0x5d23c6bfB54b76511dE38a3c5770306620f35074
2) SourceMinter.sol -> This helps the sender to pass a message from his/her desired chain to the destination chain which mints an NFT
3) MyNFT.sol -> ERC721 contract
4) Destination.sol -> This contract receives a message from the sopurce chain to mint an NFT



#This project is Scaffolded using ScaffoldETH2
Chainlink CCIP transaction https://ccip.chain.link/msg/0xa480cfa6e909c048e08362b2ddd446c8100bec7f643fea570bb0a916a24e9703

SourceMinter Contract Deployed on Sepolia Testnet at 0xD81cf3CbF8B7554208146451A3219c29534D80cA

Destination Minter contract deployed on Polygon Mumbai testnet at 0xf701D829de7ecD724f674C00fD714936Fa510ce8

NFTContract deployed on polygon Mumbai testnet at 0x7B690825bBB3f0a5b8410d4596e12e79c62909C0

Preference Contract deployed on Filecoin Calibration testnet at 0x5d23c6bfB54b76511dE38a3c5770306620f35074
