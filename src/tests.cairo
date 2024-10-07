// use starknet_snfoudry_basics::vault::simple_vault::ISimpleVaultDispatcher;
// use starknet_snfoudry_basics::vault::simple_vault::ISimpleVaultDispatcherTrait;
// use starknet_snfoudry_basics::vault::simple_vault::ISimpleVaultSafeDispatcher;
// use starknet_snfoudry_basics::vault::simple_vault::ISimpleVaultSafeDispatcherTrait;

mod tests {
    use starknet::ContractAddress;
    use snforge_std::{declare, ContractClassTrait, DeclareResultTrait};
    use starknet_snfoudry_basics::simple_contract::{
        ISimpleContractDispatcher, ISimpleContractDispatcherTrait
    };
    // use starknet_snfoudry_basics::
    use starknet_snfoudry_basics::simple_vault::ISimpleVaultDispatcher;
    use starknet_snfoudry_basics::simple_vault::ISimpleVaultDispatcherTrait;
    use starknet_snfoudry_basics::simple_vault::ISimpleVaultSafeDispatcher;
    use starknet_snfoudry_basics::simple_vault::ISimpleVaultSafeDispatcherTrait;


    #[test]
    fn test_deploy_vault() {
        let vault = declare("SimpleVault").unwrap().contract_class();
        let (contract_address, _) = vault.deploy(@array![]).unwrap();
        // Create a Dispatcher object that will allow interacting with the deployed contract
        let dispatcher = ISimpleVaultDispatcher { contract_address };
        //
        let vault_version = dispatcher.version();
        println!("Contract address is: {:?}", contract_address);
        println!("vault_version: {}", vault_version);
        assert!(vault_version == 1, "vault_version == 1");
    }
    // #[test]
// fn call_and_invoke() {
//     // First declare and deploy a contract
//     let contract = declare("SimpleContract").unwrap().contract_class();
//     // Alternatively we could use `deploy_syscall` here
//     let (contract_address, _) = contract.deploy(@array![]).unwrap();

    //     // Create a Dispatcher object that will allow interacting with the deployed contract
//     let dispatcher = ISimpleContractDispatcher { contract_address };

    //     // Call a view function of the contract
//     let balance = dispatcher.get_balance();
//     assert(balance == 0, 'balance == 0');

    //     // Call a function of the contract
//     // Here we mutate the state of the storage
//     dispatcher.increase_balance(100);

    //     // Check that transaction took effect
//     let balance = dispatcher.get_balance();
//     assert(balance == 100, 'balance == 100');
// }
}

