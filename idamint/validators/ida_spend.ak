use cardano/transaction.{OutputReference, Transaction}

pub type IdaSpendRedeemer {
  IdaSpendRedeemer
}

pub type IdaDatum {
  nfc_id: ByteArray,
  nft_name: String,
  nft_loc: String,
}

validator ida_spend_validator {
  spend(
    datum: Option<IdaDatum>,
    redeemer: IdaSpendRedeemer,
    utxo: OutputReference,
    self: Transaction,
  ) {
    todo @"IdaMint: Verify spend authorization, ensure correct NFT is being spent, validate datum"
  }

  else(_) {
    fail
  }
}
