use cardano/assets.{PolicyId}
use cardano/transaction.{OutputReference, Transaction}

pub type IdaMintRedeemer {
  nft_name: String,
  nft_loc: String,
  nfc_id: ByteArray,
  timestamp: Int,
}

validator ida_mint_validator {
  mint(redeemer: IdaMintRedeemer, policy_id: PolicyId, self: Transaction) {
    todo @"IdaMint: Verify NFC scan data, check if NFT is already claimed, mint NFT if not"
  }

  else(_) {
    fail
  }
}
