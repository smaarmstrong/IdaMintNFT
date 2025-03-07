# IdaMintNFT
Mint NFTs for NFCs. Backend.

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


## On the NFT Side of things...
<ul>
<li>An NFT Could be "pre-minted" or "staged"</li>
  <ul>
    <li>then "activated" when via transaction (ie: claimed)</li>
  </ul>
<li>Or if could be the whole process or minting</li>
  <ul>
<li>I have a blank NFC, let's create a physical NFT Bookmark</li>
    <ul>
      <li>Create Asset Payload - URL, Image, Note</li>
      <li>Use that ^ as MetaData to mint the NFT</li>
      <li>Have the NFC writer app write the resulting NFT URL (as mentioned above) to the NFC.</li>
    </ul>
  </ul>
</ul>
