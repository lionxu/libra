module A {
    use 0x0::Signer;
    resource struct T1 {v: u64}

    public fun test(account: &signer) acquires T1, T1 {
        borrow_global_mut<T1>(Signer::address_of(account));
    }
}

// check: DUPLICATE_ACQUIRES_RESOURCE_ANNOTATION_ERROR
