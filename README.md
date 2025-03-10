# IdaMintNFT
Mint NFTs for NFCs. Backend. See <a href="https://github.com/smaarmstrong/IdaMintNFC">mobile NFC app frontend</a>.

## NFC Starts Blank. Ends up w/ a URL.
In the case of Cardano this URL could be:
<ol>
<li>General IPFS/Arweave Asset</li>
<li>Cardano Ledger Asset Address (via pool.pm)</li>
<li>App/Site URL that references the asset and optionally shows (see on-chain details)...</li>
  <ol>
    <li>Linking to pool.pm or </li>
    <li>Using blockfrost to query and render</li>
    </ol>
</ol>


## On the NFT side of things...
<ul>
<li>An NFT Could be "pre-minted" or "staged"</li>
  <ul>
    <li>then "activated" when via transaction (ie: claimed)</li>
    <li>"pre-minted" could even include NFTs minted outside of our policity</li>
    <ul>
      <li>**N.B.** this means we cannot use their policy -- just our in-house policy.</li>
    </ul>
  </ul>
<li>Or if could be the whole process of minting</li>
  <ul>
<li>I have a blank NFC, let's create a physical NFT Bookmark</li>
    <ul>
      <li>Create Asset Payload - URL, Image, Note</li>
      <li>Use that ^ as MetaData to mint the NFT</li>
      <li>Have the NFC writer app write the resulting NFT URL (as mentioned above) to the NFC.</li>
    </ul>
  </ul>
</ul>

## This repo concerns the NFT side of things.
For now, I am just going to write some basic Aiken for the minimum requirement of **one validator spending handler** and **one validator minting handler.**
