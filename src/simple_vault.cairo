#[starknet::interface]
pub trait ISimpleVault<TContractState> {
    fn version(self: @TContractState) -> felt252;
}

#[starknet::contract]
pub mod SimpleVault {
    use super::ISimpleVault;
    #[storage]
    struct Storage {}

    impl SimpleVault of ISimpleVault<ContractState> {
        #[abi(embed_v0)]
        fn version(self: @ContractState) -> felt252 {
            return 1;
        }
    }
}

